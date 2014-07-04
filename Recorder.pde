import SimpleOpenNI.*;
import processing.opengl.*;

/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Recorder, when record is selected
*  this conroller is activated which sets
*  up the kinect and its callbacks and
*  handles calibration and the creation
*  of a new SkeletonRecording
*/
  
  SkeletonRecorder skeletonRecorder;
  boolean recording = false;
  float offByDistance = 0.0;
  
    int frameNumber = 0;
    PVector converted_SKEL_HEAD = new PVector();
    PVector converted_SKEL_NECK = new PVector();
    PVector converted_SKEL_LEFT_SHOULDER = new PVector();
    PVector converted_SKEL_LEFT_ELBOW = new PVector();
    PVector converted_SKEL_LEFT_HAND = new PVector();
    PVector converted_SKEL_RIGHT_SHOULDER = new PVector();
    PVector converted_SKEL_RIGHT_ELBOW = new PVector();
    PVector converted_SKEL_TORSO = new PVector();
    PVector converted_SKEL_LEFT_HIP = new PVector();
    PVector converted_SKEL_LEFT_KNEE = new PVector();
    PVector converted_SKEL_RIGHT_HIP = new PVector();
    PVector converted_SKEL_LEFT_FOOT = new PVector();
    PVector converted_SKEL_RIGHT_KNEE = new PVector();
    PVector converted_SKEL_RIGHT_FOOT = new PVector();
    PVector converted_SKEL_RIGHT_HAND = new PVector();
    
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
    
    SimpleOpenNI  kinect = new SimpleOpenNI(this);
    
    PositionAnalysis an = new PositionAnalysis();
    
  /*
  *  activates the kinect to beign recording skeleton data
  */
  public void setupRecorder()
 {
    an.setType(exerciseType);
    kinect.enableDepth();  //  using the depth camera
    kinect.enableUser(SimpleOpenNI.SKEL_PROFILE_ALL);  //  using full skeleton access
    kinect.setMirror(true);  //  reverse skeleton data so that the screen is like a mirror
    skeletonRecorder = new SkeletonRecorder(kinect, exercise); 
  }
  /*
  *  for every frame get the latest data from the camera
  */
  public void update()
  {
    kinect.update();  
  }
  /*
  *  close kinect
  */
  public void finish()
  {
    kinect.close();
  }
  
  /*
  *  draw the skeleton using SkeletonRecorder if recoridng
  */
  public void drawRecorder(boolean save)
  {
    kinect.update();  //  for every frame get the latest data from the camera//  for every frame get the latest data from the camera
    noStroke();
    
  fill(255);
  if(save)
  {
    fill(color(250, 0, 0));
    ellipse(920, 130, 30, 30);
  }
  
  IntVector userList = new IntVector();
  kinect.getUsers(userList);  //  this is the number of people discovered in front of the camera
  
  if (userList.size() > 0) 
  {
    int userId = userList.get(0);
    skeletonRecorder.setUser(userId);   //  only interested in the first user discovered

    if ( kinect.isTrackingSkeleton(userId)) 
    {
      
      // if recording tell recorder to capture the frame
      if(recording)
      {
        
       skeletonRecorder.recordFrame(save);  //  save limbs if recoring and saving
       
       int feedback = 0;
       
       if(save)
       {
         if(development == false)
         {  
               if(frameNumber < player1.getNumberOfFrames())
               {
                  feedback = an.analiseSkeleton(skeletonRecorder.getSkeleton(frameNumber), frameNumber);
                  //  for the patient imidiate feedback
                  println(feedback);
               }
               
               int middle = (player1.getNumberOfFrames() / 2);
      
         switch (feedback)
         {
           case 2 :  fill(0, 160, 100);
                     text("GOOD", 360, 140);
                     if(frameNumber > middle)
                     {
                       skeletonRecorder.addGood2nd();
                     }
                     else
                     {
                       skeletonRecorder.addGood1st();
                     }
                     break;
           case 1 :  fill(255, 128, 0);
                     text("OK", 360, 140);
                     if(frameNumber > middle)
                     {
                       skeletonRecorder.addOk2nd();
                     }
                     else
                     {
                       skeletonRecorder.addOk1st();
                     }
                     break;
           default:  fill(160, 100, 100);
                     text("BAD", 360, 140);
                     if(frameNumber > middle)
                     {
                       skeletonRecorder.addBad2nd();
                     }
                     else
                     {
                       skeletonRecorder.addBad1st();
                     }
                     break;
           }
         }
         frameNumber++;
       }
      }
    }
  }
}
/*
*  these are used by the framework simpleOpenNI used for the calibration of a user
*/ 
public void onNewUser(int id) {
  println("pose detecion has started");
  kinect.startPoseDetection("Psi", id);
}

public void onEndCalibration(int id, boolean successful) {
  if (successful) {
    
    kinect.startTrackingSkeleton(id);
    recording = true; // start recording
    label_errorMessage.setVisible(false);
    controltimer_exercisetimer.reset();
    timer = controltimer_exercisetimer.toString();
  }
  else {
    println("User Not calibrating or incorrecly performed");
    label_errorMessage.setText("**CALIBRATING INCORRECTLY").setVisible(true);
    kinect.startPoseDetection("Psi", id);
  }
}

public void onStartPose(String pose, int id) {
  println("Started pose for user");
  kinect.stopPoseDetection(id);
  kinect.requestCalibrationSkeleton(id, true);
}

public void endRecording()
{
  recording = false;
  skeletonRecorder.saveToXml();
  //finish();
}


