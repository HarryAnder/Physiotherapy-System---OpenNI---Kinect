/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  SkeletonRecorder is the main class
*  it stores the values of each of the 15 limbs
*  for every limb for every frame, draws the
*  skeleton and saves the recording to the database
*  using WriteExerciseToDB
*/

class SkeletonRecorder
{
  
  SimpleOpenNI context;
  int SKEL_HEAD; 
  int SKEL_NECK;
  int SKEL_LEFT_SHOULDER;
  int SKEL_LEFT_ELBOW;
  int SKEL_LEFT_HAND;
  int SKEL_RIGHT_SHOULDER;
  int SKEL_RIGHT_ELBOW;
  int SKEL_TORSO;
  int SKEL_LEFT_HIP;
  int SKEL_LEFT_KNEE;
  int SKEL_RIGHT_HIP;
  int SKEL_LEFT_FOOT;
  int SKEL_RIGHT_KNEE;
  int SKEL_RIGHT_FOOT;
  int SKEL_RIGHT_HAND;
  
  int userID;
  
  ArrayList<PVector> frames_SKEL_HEAD;
  ArrayList<PVector> frames_SKEL_NECK;
  ArrayList<PVector> frames_SKEL_LEFT_SHOULDER;
  ArrayList<PVector> frames_SKEL_LEFT_ELBOW;
  ArrayList<PVector> frames_SKEL_LEFT_HAND;
  ArrayList<PVector> frames_SKEL_RIGHT_SHOULDER;
  ArrayList<PVector> frames_SKEL_RIGHT_ELBOW;
  ArrayList<PVector> frames_SKEL_TORSO;
  ArrayList<PVector> frames_SKEL_LEFT_HIP;
  ArrayList<PVector> frames_SKEL_LEFT_KNEE;
  ArrayList<PVector> frames_SKEL_RIGHT_HIP;
  ArrayList<PVector> frames_SKEL_LEFT_FOOT;
  ArrayList<PVector> frames_SKEL_RIGHT_KNEE;
  ArrayList<PVector> frames_SKEL_RIGHT_FOOT;
  ArrayList<PVector> frames_SKEL_RIGHT_HAND;
  
  RecordingAnalysis analysis;
  
  String grade;
  
  int good1st = 0;
  int ok1st = 0;
  int bad1st = 0;
  int good2nd = 0;
  int ok2nd = 0;
  int bad2nd = 0;
  
  int delay5Good = 0;
  int delay5Ok = 0;
  int delay5Bad = 0;
  
  int delay5Score = 0;
  
  int delay2Good = 0;
  int delay2Ok = 0;
  int delay2Bad = 0;
  
  int delay2Score = 0;

  int currentFrame = 0;
  Exercise exercise;
  
  int colour_bones = color(255);
  int colour_joints = color(0, 250, 0);
  
  Skeleton skeleton;
  
  SkeletonRecorder()
  {
     frames_SKEL_HEAD = new ArrayList();
     frames_SKEL_NECK = new ArrayList();
     frames_SKEL_LEFT_SHOULDER = new ArrayList();
     frames_SKEL_LEFT_ELBOW = new ArrayList();
     frames_SKEL_LEFT_HAND = new ArrayList();
     frames_SKEL_RIGHT_SHOULDER = new ArrayList();
     frames_SKEL_RIGHT_ELBOW = new ArrayList();
     frames_SKEL_TORSO = new ArrayList();
     frames_SKEL_LEFT_HIP = new ArrayList();
     frames_SKEL_LEFT_KNEE = new ArrayList();
     frames_SKEL_RIGHT_HIP = new ArrayList();
     frames_SKEL_LEFT_FOOT = new ArrayList();
     frames_SKEL_RIGHT_KNEE = new ArrayList();
     frames_SKEL_RIGHT_FOOT = new ArrayList();
     frames_SKEL_RIGHT_HAND = new ArrayList();
  }
  
  SkeletonRecorder(SimpleOpenNI tempContext, Exercise e)
  {
    exercise = e;
    context = tempContext;
    //  get usable pointers to the skeletons 15 limbs 
    SKEL_HEAD = SimpleOpenNI.SKEL_HEAD; 
    SKEL_NECK = SimpleOpenNI.SKEL_NECK;
    SKEL_LEFT_SHOULDER = SimpleOpenNI.SKEL_LEFT_SHOULDER;
    SKEL_LEFT_ELBOW = SimpleOpenNI.SKEL_LEFT_ELBOW;
    SKEL_LEFT_HAND = SimpleOpenNI.SKEL_LEFT_HAND;
    SKEL_RIGHT_SHOULDER = SimpleOpenNI.SKEL_RIGHT_SHOULDER;
    SKEL_RIGHT_ELBOW = SimpleOpenNI.SKEL_RIGHT_ELBOW;
    SKEL_TORSO = SimpleOpenNI.SKEL_TORSO;
    SKEL_LEFT_HIP = SimpleOpenNI.SKEL_LEFT_HIP;
    SKEL_LEFT_KNEE = SimpleOpenNI.SKEL_LEFT_KNEE;
    SKEL_RIGHT_HIP = SimpleOpenNI.SKEL_RIGHT_HIP;
    SKEL_LEFT_FOOT = SimpleOpenNI.SKEL_LEFT_FOOT;
    SKEL_RIGHT_KNEE = SimpleOpenNI.SKEL_RIGHT_KNEE;
    SKEL_RIGHT_FOOT = SimpleOpenNI.SKEL_RIGHT_FOOT;
    SKEL_RIGHT_HAND = SimpleOpenNI.SKEL_RIGHT_HAND;
    setFrameArrays();  //  create the ArrayLists which will hold all the PVectors
  }
  /*
  *  initialise limb arrays
  */
  void setFrameArrays()
  {
     frames_SKEL_HEAD = new ArrayList();
     frames_SKEL_NECK = new ArrayList();
     frames_SKEL_LEFT_SHOULDER = new ArrayList();
     frames_SKEL_LEFT_ELBOW = new ArrayList();
     frames_SKEL_LEFT_HAND = new ArrayList();
     frames_SKEL_RIGHT_SHOULDER = new ArrayList();
     frames_SKEL_RIGHT_ELBOW = new ArrayList();
     frames_SKEL_TORSO = new ArrayList();
     frames_SKEL_LEFT_HIP = new ArrayList();
     frames_SKEL_LEFT_KNEE = new ArrayList();
     frames_SKEL_RIGHT_HIP = new ArrayList();
     frames_SKEL_LEFT_FOOT = new ArrayList();
     frames_SKEL_RIGHT_KNEE = new ArrayList();
     frames_SKEL_RIGHT_FOOT = new ArrayList();
     frames_SKEL_RIGHT_HAND = new ArrayList();
  }
  
  void setUser(int tempUser)
  {
    userID = tempUser;
  }
  
  /*
  *  get the limb vectors from the kinect convert them to (x,y,z) 
  *  add on the extra x and y values to center skeleton then
  *  draw the skeleton and then you can save the frame
  */
  void recordFrame(boolean save)
  {
    //  create some holders
    PVector position_SKEL_HEAD = new PVector();
    PVector position_SKEL_NECK = new PVector();
    PVector position_SKEL_LEFT_SHOULDER = new PVector();
    PVector position_SKEL_LEFT_ELBOW = new PVector();
    PVector position_SKEL_LEFT_HAND = new PVector();
    PVector position_SKEL_RIGHT_SHOULDER = new PVector();
    PVector position_SKEL_RIGHT_ELBOW = new PVector();
    PVector position_SKEL_TORSO = new PVector();
    PVector position_SKEL_LEFT_HIP = new PVector();
    PVector position_SKEL_LEFT_KNEE = new PVector();
    PVector position_SKEL_RIGHT_HIP = new PVector();
    PVector position_SKEL_LEFT_FOOT = new PVector();
    PVector position_SKEL_RIGHT_KNEE = new PVector();
    PVector position_SKEL_RIGHT_FOOT = new PVector();
    PVector position_SKEL_RIGHT_HAND = new PVector();
    
    //  get the vectors from the kinect for the frame 
    context.getJointPositionSkeleton(userID, SKEL_HEAD, 
    position_SKEL_HEAD);
    context.getJointPositionSkeleton(userID, SKEL_NECK, 
    position_SKEL_NECK);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_SHOULDER,
    position_SKEL_LEFT_SHOULDER);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_ELBOW,
    position_SKEL_LEFT_ELBOW);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_HAND,
    position_SKEL_LEFT_HAND);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_SHOULDER,
    position_SKEL_RIGHT_SHOULDER);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_ELBOW, 
    position_SKEL_RIGHT_ELBOW);
    context.getJointPositionSkeleton(userID, SKEL_TORSO, 
    position_SKEL_TORSO);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_HIP, 
    position_SKEL_LEFT_HIP);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_KNEE, 
    position_SKEL_LEFT_KNEE);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_HIP, 
    position_SKEL_RIGHT_HIP);
    context.getJointPositionSkeleton(userID, SKEL_LEFT_FOOT, 
    position_SKEL_LEFT_FOOT);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_KNEE, 
    position_SKEL_RIGHT_KNEE);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_FOOT, 
    position_SKEL_RIGHT_FOOT);
    context.getJointPositionSkeleton(userID, SKEL_RIGHT_HAND, 
    position_SKEL_RIGHT_HAND);
    
    //  get the projective values (x,y,z) 
    kinect.convertRealWorldToProjective(position_SKEL_HEAD, 
    position_SKEL_HEAD);
    kinect.convertRealWorldToProjective(position_SKEL_NECK, 
    position_SKEL_NECK);
    kinect
    .convertRealWorldToProjective(position_SKEL_LEFT_SHOULDER, 
    position_SKEL_LEFT_SHOULDER);
    kinect.convertRealWorldToProjective(position_SKEL_LEFT_ELBOW,
    position_SKEL_LEFT_ELBOW );
    kinect.convertRealWorldToProjective(position_SKEL_LEFT_HAND, 
    position_SKEL_LEFT_HAND );
    kinect
    .convertRealWorldToProjective(position_SKEL_RIGHT_SHOULDER, 
    position_SKEL_RIGHT_SHOULDER);
    kinect.convertRealWorldToProjective(position_SKEL_RIGHT_ELBOW,
    position_SKEL_RIGHT_ELBOW);
    kinect.convertRealWorldToProjective(position_SKEL_TORSO, 
    position_SKEL_TORSO);
    kinect.convertRealWorldToProjective(position_SKEL_LEFT_HIP, 
    position_SKEL_LEFT_HIP);
    kinect.convertRealWorldToProjective(position_SKEL_LEFT_KNEE, 
    position_SKEL_LEFT_KNEE);
    kinect.convertRealWorldToProjective(position_SKEL_RIGHT_HIP, 
    position_SKEL_RIGHT_HIP);
    kinect.convertRealWorldToProjective(position_SKEL_LEFT_FOOT, 
    position_SKEL_LEFT_FOOT);
    kinect.convertRealWorldToProjective(position_SKEL_RIGHT_KNEE, 
    position_SKEL_RIGHT_KNEE);
    kinect.convertRealWorldToProjective(position_SKEL_RIGHT_FOOT, 
    position_SKEL_RIGHT_FOOT);
    kinect.convertRealWorldToProjective(position_SKEL_RIGHT_HAND, 
    position_SKEL_RIGHT_HAND );
    
    position_SKEL_HEAD.x = position_SKEL_HEAD.x + 322;
    position_SKEL_HEAD.y = position_SKEL_HEAD.y + 101;
    position_SKEL_NECK.x = position_SKEL_NECK.x + 322;
    position_SKEL_NECK.y = position_SKEL_NECK.y + 101;
    position_SKEL_LEFT_SHOULDER.x = position_SKEL_LEFT_SHOULDER.x 
    + 322;
    position_SKEL_LEFT_SHOULDER.y = position_SKEL_LEFT_SHOULDER.y 
    + 101;
    position_SKEL_LEFT_ELBOW.x = position_SKEL_LEFT_ELBOW.x + 322;
    position_SKEL_LEFT_ELBOW.y = position_SKEL_LEFT_ELBOW.y + 101;
    position_SKEL_LEFT_HAND.x = position_SKEL_LEFT_HAND.x + 322;
    position_SKEL_LEFT_HAND.y = position_SKEL_LEFT_HAND.y + 101;
    position_SKEL_RIGHT_SHOULDER.x = position_SKEL_RIGHT_SHOULDER
    .x + 322;
    position_SKEL_RIGHT_SHOULDER.y = position_SKEL_RIGHT_SHOULDER
    .y + 101;
    position_SKEL_RIGHT_ELBOW.x = position_SKEL_RIGHT_ELBOW.x 
    + 322;
    position_SKEL_RIGHT_ELBOW.y = position_SKEL_RIGHT_ELBOW.y 
    + 101;
    position_SKEL_TORSO.x = position_SKEL_TORSO.x + 322;
    position_SKEL_TORSO.y = position_SKEL_TORSO.y + 101;
    position_SKEL_LEFT_HIP.x = position_SKEL_LEFT_HIP.x + 322;
    position_SKEL_LEFT_HIP.y = position_SKEL_LEFT_HIP.y + 101;
    position_SKEL_LEFT_KNEE.x = position_SKEL_LEFT_KNEE.x + 322;
    position_SKEL_LEFT_KNEE.y = position_SKEL_LEFT_KNEE.y + 101;
    position_SKEL_RIGHT_HIP.x = position_SKEL_RIGHT_HIP.x + 322;
    position_SKEL_RIGHT_HIP.y = position_SKEL_RIGHT_HIP.y + 101;
    position_SKEL_LEFT_FOOT.x = position_SKEL_LEFT_FOOT.x + 322;
    position_SKEL_LEFT_FOOT.y = position_SKEL_LEFT_FOOT.y + 101;
    position_SKEL_RIGHT_KNEE.x = position_SKEL_RIGHT_KNEE.x + 322;
    position_SKEL_RIGHT_KNEE.y = position_SKEL_RIGHT_KNEE.y + 101;
    position_SKEL_RIGHT_FOOT.x = position_SKEL_RIGHT_FOOT.x + 322;
    position_SKEL_RIGHT_FOOT.y = position_SKEL_RIGHT_FOOT.y + 101;
    position_SKEL_RIGHT_HAND.x = position_SKEL_RIGHT_HAND.x + 322;
    position_SKEL_RIGHT_HAND.y = position_SKEL_RIGHT_HAND.y + 101;
    
    //  draw the skeleton
    drawBone(position_SKEL_HEAD, position_SKEL_NECK);
    drawBone(position_SKEL_NECK, position_SKEL_LEFT_SHOULDER);
    drawBone(position_SKEL_LEFT_SHOULDER, 
    position_SKEL_LEFT_ELBOW);
    drawBone(position_SKEL_LEFT_ELBOW, position_SKEL_LEFT_HAND);
    drawBone(position_SKEL_NECK, position_SKEL_RIGHT_SHOULDER);
    drawBone(position_SKEL_RIGHT_SHOULDER, 
    position_SKEL_RIGHT_ELBOW);
    drawBone(position_SKEL_RIGHT_ELBOW, position_SKEL_RIGHT_HAND);
    drawBone(position_SKEL_LEFT_SHOULDER, position_SKEL_TORSO);
    drawBone(position_SKEL_RIGHT_SHOULDER, position_SKEL_TORSO);
    drawBone(position_SKEL_TORSO, position_SKEL_LEFT_HIP);
    drawBone(position_SKEL_LEFT_HIP, position_SKEL_LEFT_KNEE);
    drawBone(position_SKEL_LEFT_KNEE, position_SKEL_LEFT_FOOT);
    drawBone(position_SKEL_TORSO, position_SKEL_RIGHT_HIP);
    drawBone(position_SKEL_LEFT_HIP, position_SKEL_RIGHT_HIP);
    drawBone(position_SKEL_RIGHT_HIP, position_SKEL_RIGHT_KNEE);
    drawBone(position_SKEL_RIGHT_KNEE, position_SKEL_RIGHT_FOOT);
    
    //  draw the joints
    drawJoint(position_SKEL_HEAD);
    drawJoint(position_SKEL_NECK);
    drawJoint(position_SKEL_LEFT_SHOULDER);
    drawJoint(position_SKEL_LEFT_ELBOW);
    drawJoint(position_SKEL_LEFT_HAND);
    drawJoint(position_SKEL_RIGHT_SHOULDER);
    drawJoint(position_SKEL_RIGHT_ELBOW);
    drawJoint(position_SKEL_TORSO);
    drawJoint(position_SKEL_LEFT_HIP);
    drawJoint(position_SKEL_LEFT_KNEE);
    drawJoint(position_SKEL_RIGHT_HIP);
    drawJoint(position_SKEL_LEFT_FOOT);
    drawJoint(position_SKEL_RIGHT_KNEE);
    drawJoint(position_SKEL_RIGHT_FOOT);
    drawJoint(position_SKEL_RIGHT_HAND);
    
    if(save)
    {
      frames_SKEL_HEAD.add(position_SKEL_HEAD);
      frames_SKEL_NECK.add(position_SKEL_NECK);
      frames_SKEL_LEFT_SHOULDER.add(position_SKEL_LEFT_SHOULDER);
      frames_SKEL_LEFT_ELBOW.add(position_SKEL_LEFT_ELBOW);
      frames_SKEL_LEFT_HAND.add(position_SKEL_LEFT_HAND);
      frames_SKEL_RIGHT_SHOULDER.add(position_SKEL_RIGHT_SHOULDER);
      frames_SKEL_RIGHT_ELBOW.add(position_SKEL_RIGHT_ELBOW); 
      frames_SKEL_TORSO.add(position_SKEL_TORSO);       
      frames_SKEL_LEFT_HIP.add(position_SKEL_LEFT_HIP);       
      frames_SKEL_LEFT_KNEE.add(position_SKEL_LEFT_KNEE);       
      frames_SKEL_RIGHT_HIP.add(position_SKEL_RIGHT_HIP);   
      frames_SKEL_LEFT_FOOT.add(position_SKEL_LEFT_FOOT);      
      frames_SKEL_RIGHT_KNEE.add(position_SKEL_RIGHT_KNEE);     
      frames_SKEL_RIGHT_FOOT.add(position_SKEL_RIGHT_FOOT);
      frames_SKEL_RIGHT_HAND.add(position_SKEL_RIGHT_HAND);
      
    }
    else
    {
       skeleton = new Skeleton();
      
      skeleton.setHeadPosition(position_SKEL_HEAD);
      skeleton.setKneckPosition(position_SKEL_NECK);
      skeleton.setLeftShoulderPosition(position_SKEL_LEFT_SHOULDER);
      skeleton.setLeftElbowPosition(position_SKEL_LEFT_ELBOW);
      skeleton.setLeftHandPosition(position_SKEL_LEFT_HAND);
      skeleton.setRightShoulderPosition(position_SKEL_RIGHT_SHOULDER);
      skeleton.setRightElbowPosition(position_SKEL_RIGHT_ELBOW);
      skeleton.setTorsoPosition(position_SKEL_TORSO);
      skeleton.setLeftHipPosition(position_SKEL_LEFT_HIP);
      skeleton.setLeftKneePosition(position_SKEL_LEFT_KNEE);
      skeleton.setRightHipPosition(position_SKEL_RIGHT_HIP);
      skeleton.setLeftFootPosition(position_SKEL_LEFT_FOOT);
      skeleton.setRightKneePosition(position_SKEL_RIGHT_KNEE);
      skeleton.setRightFootPosition(position_SKEL_RIGHT_FOOT);
      skeleton.setRightHandPosition(position_SKEL_RIGHT_HAND);
    }
  }
/*
*  given the vector draw the joint as an ellipse
*/
  void drawJoint(PVector joint) 
  { 
    strokeWeight(0);
    fill(colour_joints);
    //  (value, lower range, upper range, lower size, upper size)
    //  r should be bigger if it is closer to the camera
    float r = map(joint.z, 100, 3500, 50, 1);  
    ellipse(joint.x, joint.y, r, r);
  }
/*
*  given the two joints connect them with a line
*  crating a bone
*/
  void drawBone(PVector joint1, PVector joint2)
  {
    stroke(colour_bones);
    strokeWeight(5);
    line(joint1.x, joint1.y, joint2.x, joint2.y);
   }
  
  PVector getPosition(int joint)
  {
    if(joint == SKEL_HEAD)
    {
      return frames_SKEL_HEAD.get(currentFrame);
    }
    if(joint == SKEL_NECK)
    {
      return frames_SKEL_NECK.get(currentFrame);
    }
    if(joint == SKEL_LEFT_SHOULDER)
    {
      return frames_SKEL_LEFT_SHOULDER.get(currentFrame);
    }
    if(joint == SKEL_LEFT_ELBOW)
    {
      return frames_SKEL_LEFT_ELBOW.get(currentFrame);
    }
    if(joint == SKEL_LEFT_HAND)
    {
      return frames_SKEL_LEFT_HAND.get(currentFrame);
    }
    if(joint == SKEL_RIGHT_SHOULDER)
    {
      return frames_SKEL_RIGHT_SHOULDER.get(currentFrame);
    }
    if(joint == SKEL_RIGHT_ELBOW)
    {
      return frames_SKEL_RIGHT_ELBOW.get(currentFrame);
    }
    if(joint == SKEL_TORSO)
    {
      return frames_SKEL_TORSO.get(currentFrame);
    }
    if(joint == SKEL_LEFT_HIP)
    {
      return frames_SKEL_LEFT_HIP.get(currentFrame);
    }
    if(joint == SKEL_LEFT_KNEE)
    {
      return frames_SKEL_LEFT_KNEE.get(currentFrame);
    }
    if(joint == SKEL_RIGHT_HIP)
    {
      return frames_SKEL_RIGHT_HIP.get(currentFrame);
    }
    if(joint == SKEL_LEFT_FOOT)
    {
      return frames_SKEL_LEFT_FOOT.get(currentFrame);
    }
    if(joint == SKEL_RIGHT_KNEE)
    {
      return frames_SKEL_RIGHT_KNEE.get(currentFrame);
    }
    if(joint == SKEL_RIGHT_FOOT)
    {
      return frames_SKEL_RIGHT_FOOT.get(currentFrame);
    }
    else
    {
      return frames_SKEL_RIGHT_HAND.get(currentFrame);
    }
  }

    
  void nextFrame()
  {
    currentFrame++;
    if(currentFrame == frames_SKEL_RIGHT_HAND.size())
    {
      saveToXml();
      currentFrame = 0;
    }
  }
  
  int getFrameNumber()
  {
    return currentFrame;
    
  }
  
  void setColorPlayback()
  {
    colour_bones = color(150, 150, 150, 200);
    colour_joints = color(0, 100, 160, 200);
  }
  
  void setColorRecording()
  {
    colour_bones = color(250);
    colour_joints = color(0, 250, 0);
  }
  
  /*
  *  actually passes a recording to a database writer class
  */
  void saveToXml()
  {
    ArrayList[] skeleton = new ArrayList[15];

    for(int i = 0; i < 15; i++)
    {
      skeleton[i] = new ArrayList();
    }

    skeleton[0] = frames_SKEL_LEFT_FOOT;
    skeleton[1] = frames_SKEL_LEFT_KNEE;
    skeleton[2] = frames_SKEL_LEFT_HIP;
    skeleton[3] = frames_SKEL_TORSO;
    skeleton[4] = frames_SKEL_LEFT_SHOULDER;
    skeleton[5] = frames_SKEL_LEFT_ELBOW;
    skeleton[6] = frames_SKEL_LEFT_HAND;
    skeleton[7] = frames_SKEL_NECK;
    skeleton[8] = frames_SKEL_HEAD;
    skeleton[9] = frames_SKEL_RIGHT_SHOULDER;
    skeleton[10] = frames_SKEL_RIGHT_ELBOW;
    skeleton[11] = frames_SKEL_RIGHT_HAND;
    skeleton[12] = frames_SKEL_RIGHT_HIP;
    skeleton[13] = frames_SKEL_RIGHT_KNEE;
    skeleton[14] = frames_SKEL_RIGHT_FOOT;
    
    analysis = new RecordingAnalysis();
    analysis.setExerciseGrade(calculateGrade(resistence));
    analysis.setResistence(resistence);
    analysis.setScore(calculate1stScore() + calculate2ndScore());
    analysis.setGood1st(good1st);
    analysis.setGood2nd(good2nd);
    analysis.setOk1st(ok1st);
    analysis.setOk2nd(ok2nd);
    analysis.setBad1st(bad1st);
    analysis.setBad2nd(bad2nd);
    
    //  where skeleton is an array of arraylist where an arraylist
    //  represents all the pvectors or a limb, pass the number of frames
    //  the exercise details and the exercise analysis 
    WriteExerciseToDB writeToDB = new WriteExerciseToDB(skeleton, 
    frames_SKEL_LEFT_FOOT.size(), exercise, analysis);
    exercise.setId(writeToDB.getId());
  }
  
  public Skeleton getSkeleton(int num)
  {
    Skeleton skeleton = new Skeleton();
    skeleton.setHeadPosition(frames_SKEL_HEAD.get(num));
    skeleton.setKneckPosition(frames_SKEL_NECK.get(num));
    skeleton.setLeftShoulderPosition(frames_SKEL_LEFT_SHOULDER.get(num));
    skeleton.setLeftElbowPosition(frames_SKEL_LEFT_ELBOW.get(num));
    skeleton.setLeftHandPosition(frames_SKEL_LEFT_HAND.get(num));
    skeleton.setRightShoulderPosition(frames_SKEL_RIGHT_SHOULDER.get(num));
    skeleton.setRightElbowPosition(frames_SKEL_RIGHT_ELBOW.get(num));
    skeleton.setTorsoPosition(frames_SKEL_TORSO.get(num));
    skeleton.setLeftHipPosition(frames_SKEL_LEFT_HIP.get(num));
    skeleton.setLeftKneePosition(frames_SKEL_LEFT_KNEE.get(num));
    skeleton.setRightHipPosition(frames_SKEL_RIGHT_HIP.get(num));
    skeleton.setLeftFootPosition(frames_SKEL_LEFT_FOOT.get(num));
    skeleton.setRightKneePosition(frames_SKEL_RIGHT_KNEE.get(num));
    skeleton.setRightFootPosition(frames_SKEL_RIGHT_FOOT.get(num));
    skeleton.setRightHandPosition(frames_SKEL_RIGHT_HAND.get(num));
    
    return skeleton;
  
  }
 
  
   public Skeleton getSkeleton()
  {
    return skeleton;
  
  }
  public PVector getRight(int num)
  {
    return frames_SKEL_RIGHT_HAND.get(0);
  }
  
  public void addGood1st()
  {
    good1st++;
  }
  public void addOk1st()
  {
    ok1st++;
  }
  public void addBad1st()
  {
    bad1st++;
  }
  
  public int getGoods1st()
  {
    return good1st;
  }
  
  public int getOks1st()
  {
    return ok1st;
  }
  
  public int getBads1st()
  {
    return bad1st;
  }
  
  public void addGood2nd()
  {
    good2nd++;
  }
  public void addOk2nd()
  {
    ok2nd++;
  }
  public void addBad2nd()
  {
    bad2nd++;
  }
  
  public int getGoods2nd()
  {
    return good2nd;
  }
  
  public int getOks2nd()
  {
    return ok2nd;
  }
  
  public int getBads2nd()
  {
    return bad2nd;
  }
  
  /*
  *  calculate the grade using the good and ok for each half
  *  of the recording
  */
  
  public String calculateGrade(boolean resistence)
  {
    int bestScorePerHalf = calculateBestScore() / 2;  //  split the recording in two whats the highest per half
    
    //  is the score 75% overall start to finish
    if((calculate1stScore() >= (bestScorePerHalf/2) + (bestScorePerHalf/4)) //  is the 1st half grade atleast 75% correct
    && calculate2ndScore() >= (bestScorePerHalf/2) + (bestScorePerHalf/4))  //  is the 2nd half grade atleast 75% correct
    {
      if(resistence)  //  applied by the physiotherapist
      {
        return "Normal";  //  highest grade
      }
      else
      {
        return "Fair";  //  highest grade with no resistence
      }
      
    }
    
    //  is the score 50% overall start to finish
    else if((calculate1stScore() >= (bestScorePerHalf/2) //  is the 1st half grade atleast 50% correct
    && calculate2ndScore() >= (bestScorePerHalf/2)))  //  is the 2nd half grade atleast 50% correct
    {
      if(resistence)
      {
        return "Good"; 
      }
      else
      {
        return "Poor";
      }
    }
    //  is the score lower that 50% at either the start or finish or both
    else
    {
      if((calculate1stScore() >= (bestScorePerHalf/4)  //  is the 1st half grade atleast 25% correct
      && calculate2ndScore() >= (bestScorePerHalf/4))) //  is the 2nd half grade atleast 25% correct
      {
        return "Trace";
      }
      else
      {
        return "zero";  //  worst grade >25%
      }
    }
  }
  
  public int calculate1stScore()
  {
    int total = 0;
    println("total = " + total); 
    total = total + good1st*2;
    println("total = " + total); 
    total = total + ok1st;
    println("total = " + total); 
    return total;
  }
  
  public int calculate2ndScore()
  {
    int total = good2nd * 2;
    total = total + ok2nd;
    return total;
  }
  
  public int calculateScore()
  {
    int total = ok1st + ok2nd;
    total = total + (good1st*2);
    total = total + (good2nd*2) ;
    
    return total;
  }
  
  public int calculateBestScore()
  {
    return ((good1st + ok1st + bad1st + good2nd + ok2nd + bad2nd) * 2);
  }
  
  public void setDelay5Goods(int delay)
  {
    delay5Good = delay;
  }
  
  public void setDelay5Oks(int delay)
  {
    delay5Ok = delay;
  }
  
  public void setDelay5Bads(int delay)
  {
    delay5Bad = delay;
  }
  
  public void setDelay5Score(int delay)
  {
    delay5Score = delay;
  }
  
  public int getDelay5Goods()
  {
    return delay5Good;
  }
  
  public int getDelay5Oks()
  {
    return delay5Ok;
  }
  
  public int getDelay5Bads()
  {
    return delay5Bad;
  }
  
  public int getDelay5Score()
  {
    return delay5Score;
  }
  
  public void setDelay2Goods(int delay)
  {
    delay2Good = delay;
  }
  
  public void setDelay2Oks(int delay)
  {
    delay2Ok = delay;
  }
  
  public void setDelay2Bads(int delay)
  {
    delay2Bad = delay;
  }
  
  public void setDelay2Score(int delay)
  {
    delay2Score = delay;
  }
  
  public int getDelay2Goods()
  {
    return delay2Good;
  }
  
  public int getDelay2Oks()
  {
    return delay2Ok;
  }
  
  public int getDelay2Bads()
  {
    return delay2Bad;
  }
  
  public int getDelay2Score()
  {
    return delay2Score;
  }
 
}
