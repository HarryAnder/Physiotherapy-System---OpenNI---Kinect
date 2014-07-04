/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  PositionAnalysis is used
*  to determine whether two skeltons
*  are creating the same anlges
*  with the given limb. useing
*  angle calculation
*/

class PositionAnalysis
{

  Skeleton skeleton;
  int current = 0;
  String type;
  /*
  *  set the type (Left Leg)
  */
  public void setType(String type)
  {
   this.type = type;
  }
  
  /*
  *  calculate right Arm angles of the patient and 
  *  exercise skeleton for the frame and return whether
  *  it was good, ok, bad 
  */
  public int rightArm()
  {
      //  skeleton is the patients skeleton
      PVector rightHand = skeleton.getRightHandPosition();
      PVector rightElbow = skeleton.getRightElbowPosition();
      PVector rightShoulder = skeleton.getRightShoulderPosition();
      PVector torso = skeleton.getTorsoPosition();
      
      //  calculate the angles for both XY and ZY for two angles
      float angleRecorededXYForA = getAngleXY(torso, rightShoulder, rightElbow);
      float angleRecorededXYForB = getAngleXY(rightShoulder, rightElbow, rightHand);
      float angleRecorededZYForA = getAngleZY(torso, rightShoulder, rightElbow);
      float angleRecorededZYForB = getAngleZY(rightShoulder, rightElbow, rightHand); 
      
      //  player1 is exercise developer skeleton
      rightHand = player1.getRightHandPosition(current);
      rightElbow = player1.getRightElbowPosition(current);
      rightShoulder = player1.getRightShoulderPosition(current);
      torso = player1.getTorsoPosition(current);
      
      //  calculate the angles for both XY and ZY for two angles
      float anglePlayerXYForA = getAngleXY(torso, rightShoulder, rightElbow);
      float anglePlayerXYForB = getAngleXY(rightShoulder, rightElbow, rightHand);
      float anglePlayerZYForA = getAngleZY(torso, rightShoulder, rightElbow);
      float anglePlayerZYForB = getAngleZY(rightShoulder, rightElbow, rightHand);
      
      //  get the differnce from each angle of the ex dev and patient 
      float diffXY_A = 0;
      if(anglePlayerXYForA < angleRecorededXYForA )
      {
        diffXY_A = angleRecorededXYForA  - anglePlayerXYForA ;
      }
      else
      {
        diffXY_A = anglePlayerXYForA - angleRecorededXYForA;
      }
      
      float diffXY_B = 0;
      if(anglePlayerXYForB < angleRecorededXYForB )
      {
        diffXY_B = angleRecorededXYForB  - anglePlayerXYForB ;
      }
      else
      {
        diffXY_B = anglePlayerXYForB - angleRecorededXYForB;
      }
      
      float diffZY_A = 0;
      if(anglePlayerZYForA < angleRecorededZYForA )
      {
        diffZY_A = angleRecorededZYForA  - anglePlayerZYForA ;
      }
      else
      {
        diffZY_A = anglePlayerZYForA - angleRecorededZYForA;
      }
      
      float diffZY_B = 0;
      if(anglePlayerZYForB < angleRecorededZYForB )
      {
        diffZY_B = angleRecorededZYForB  - anglePlayerZYForB ;
      }
      else
      {
        diffZY_B = anglePlayerZYForB - angleRecorededZYForB;
      }
    
    //  work out the score 2 means good, 1 is ok and 0 is bad
    if((diffXY_A < 15) && (diffXY_B < 15) && (diffZY_A < 35) && (diffZY_B < 35))
    {
      return 2;
    }
    else if((diffXY_A < 25) && (diffXY_B < 25) && (diffZY_A < 45) && (diffZY_B < 45))
    {
      return 1;
    }
    else
    {
      return 0;
    }

    
  }
  
  /*
  *  calculate left Arm angles of the patient and 
  *  exercise skeleton for the frame and return whether
  *  it was good, ok, bad 
  */
  public int leftArm()
  {
    
      PVector leftHand = skeleton.getLeftHandPosition();
      PVector leftElbow = skeleton.getLeftElbowPosition();
      PVector leftShoulder = skeleton.getLeftShoulderPosition();
      PVector torso = skeleton.getTorsoPosition();

      float angleRecorededXYForA = getAngleXY(torso, leftShoulder, leftElbow);
      float angleRecorededXYForB = getAngleXY(leftShoulder, leftElbow, leftHand);
      println("recording angle A: " +  angleRecorededXYForA);
      println("recording angle B: " +  angleRecorededXYForB);
      
      float angleRecorededZYForA = getAngleZY(torso, leftShoulder, leftElbow);
      float angleRecorededZYForB = getAngleZY(leftShoulder, leftElbow, leftHand); 
      
      leftHand = player1.getLeftHandPosition(current);
      leftElbow = player1.getLeftElbowPosition(current);
      leftShoulder = player1.getLeftShoulderPosition(current);
      torso = player1.getTorsoPosition(current);
      
      float anglePlayerXYForA = getAngleXY(torso, leftShoulder, leftElbow);
      float anglePlayerXYForB = getAngleXY(leftShoulder, leftElbow, leftHand);
      println("PLAYER angle A: " +  anglePlayerXYForA);
      println("PLAER angle B: " +  anglePlayerXYForB);
      
      float anglePlayerZYForA = getAngleZY(torso, leftShoulder, leftElbow);
      float anglePlayerZYForB = getAngleZY(leftShoulder, leftElbow, leftHand);
      
      float diffXY_A = 0;
      if(anglePlayerXYForA < angleRecorededXYForA )
      {
        diffXY_A = angleRecorededXYForA  - anglePlayerXYForA ;
      }
      else
      {
        diffXY_A = anglePlayerXYForA - angleRecorededXYForA;
      }
      
      float diffXY_B = 0;
      if(anglePlayerXYForB < angleRecorededXYForB )
      {
        diffXY_B = angleRecorededXYForB  - anglePlayerXYForB ;
      }
      else
      {
        diffXY_B = anglePlayerXYForB - angleRecorededXYForB;
      }
      
      float diffZY_A = 0;
      if(anglePlayerZYForA < angleRecorededZYForA )
      {
        diffZY_A = angleRecorededZYForA  - anglePlayerZYForA ;
      }
      else
      {
        diffZY_A = anglePlayerZYForA - angleRecorededZYForA;
      }
      
      float diffZY_B = 0;
      if(anglePlayerZYForB < angleRecorededZYForB )
      {
        diffZY_B = angleRecorededZYForB  - anglePlayerZYForB ;
      }
      else
      {
        diffZY_B = anglePlayerZYForB - angleRecorededZYForB;
      }
  
    if((diffXY_A < 15) && (diffXY_B < 15) && (diffZY_A < 35) && (diffZY_B < 35))
    {
      return 2;
    }
    else if((diffXY_A < 25) && (diffXY_B < 25) && (diffZY_A < 45) && (diffZY_B < 45))
    {
      return 1;
    }
    else
    {
      return 0;
    }
  }
  
  /*
  *  calculate right Leg angles of the patient and 
  *  exercise skeleton for the frame and return whether
  *  it was good, ok, bad 
  */
   public int rightLeg()
  {
      PVector rightFoot = skeleton.getRightFootPosition();
      PVector rightKnee = skeleton.getRightKneePosition();
      PVector rightHip = skeleton.getRightHipPosition();
      PVector leftHip = skeleton.getLeftHipPosition();
      PVector torso = skeleton.getTorsoPosition();

      float angleRecorededXYForA = getAngleXY(leftHip, rightHip, rightKnee);
      float angleRecorededXYForB = getAngleXY(rightHip, rightKnee, rightFoot);
      float angleRecorededZYForA = getAngleZY(torso, rightHip, rightKnee);  //  different starting point as it makes no sense to use left hip
      float angleRecorededZYForB = getAngleZY(rightHip, rightKnee, rightFoot); 
      
      rightFoot = player1.getRightFootPosition(current);
      rightKnee = player1.getRightKneePosition(current);
      rightHip = player1.getRightHipPosition(current);
      leftHip = player1.getLeftHipPosition(current);
      torso = player1.getTorsoPosition(current);
      
      float anglePlayerXYForA = getAngleXY(leftHip, rightHip, rightKnee);
      float anglePlayerXYForB = getAngleXY(rightHip, rightKnee, rightFoot);
      float anglePlayerZYForA = getAngleZY(torso, rightHip, rightKnee);
      float anglePlayerZYForB = getAngleZY(rightHip, rightKnee, rightFoot);
      
      float diffXY_A = 0;
      if(anglePlayerXYForA < angleRecorededXYForA )
      {
        diffXY_A = angleRecorededXYForA  - anglePlayerXYForA ;
      }
      else
      {
        diffXY_A = anglePlayerXYForA - angleRecorededXYForA;
      }
      
      float diffXY_B = 0;
      if(anglePlayerXYForB < angleRecorededXYForB )
      {
        diffXY_B = angleRecorededXYForB  - anglePlayerXYForB ;
      }
      else
      {
        diffXY_B = anglePlayerXYForB - angleRecorededXYForB;
      }
      
      float diffZY_A = 0;
      if(anglePlayerZYForA < angleRecorededZYForA )
      {
        diffZY_A = angleRecorededZYForA  - anglePlayerZYForA ;
      }
      else
      {
        diffZY_A = anglePlayerZYForA - angleRecorededZYForA;
      }
      
      float diffZY_B = 0;
      if(anglePlayerZYForB < angleRecorededZYForB )
      {
        diffZY_B = angleRecorededZYForB  - anglePlayerZYForB ;
      }
      else
      {
        diffZY_B = anglePlayerZYForB - angleRecorededZYForB;
      }
    
    if((diffXY_A < 15) && (diffXY_B < 15) && (diffZY_A < 35) && (diffZY_B < 35))
    {
      return 2;
    }
    else if((diffXY_A < 25) && (diffXY_B < 25) && (diffZY_A < 45) && (diffZY_B < 45))
    {
      return 1;
    }
    else
    {
      return 0;
    }
  }
  /*
  *  calculate left Leg angles of the patient and 
  *  exercise skeleton for the frame and return whether
  *  it was good, ok, bad 
  */
  public int leftLeg()
  {
      PVector leftFoot = skeleton.getLeftFootPosition();
      PVector leftKnee = skeleton.getLeftKneePosition();
      PVector rightHip = skeleton.getRightHipPosition();
      PVector leftHip = skeleton.getLeftHipPosition();
      PVector torso = skeleton.getTorsoPosition();

      float angleRecorededXYForA = getAngleXY(rightHip, leftHip, leftKnee);
      float angleRecorededXYForB = getAngleXY(leftHip, leftKnee, leftFoot);
      float angleRecorededZYForA = getAngleZY(torso, leftHip, leftKnee);  //  different starting point as it makes no sense to use left hip
      float angleRecorededZYForB = getAngleZY(leftHip, leftKnee, leftFoot); 
      
      leftFoot = player1.getLeftFootPosition(current);
      leftKnee = player1.getLeftKneePosition(current);
      rightHip = player1.getRightHipPosition(current);
      leftHip = player1.getLeftHipPosition(current);
      torso = player1.getTorsoPosition(current);
      
      float anglePlayerXYForA = getAngleXY(rightHip, leftHip, leftKnee);
      float anglePlayerXYForB = getAngleXY(leftHip, leftKnee, leftFoot);
      float anglePlayerZYForA = getAngleZY(torso, leftHip, leftKnee);
      float anglePlayerZYForB = getAngleZY(leftHip, leftKnee, leftFoot);
      
      float diffXY_A = 0;
      if(anglePlayerXYForA < angleRecorededXYForA )
      {
        diffXY_A = angleRecorededXYForA  - anglePlayerXYForA ;
      }
      else
      {
        diffXY_A = anglePlayerXYForA - angleRecorededXYForA;
      }
      
      float diffXY_B = 0;
      if(anglePlayerXYForB < angleRecorededXYForB )
      {
        diffXY_B = angleRecorededXYForB  - anglePlayerXYForB ;
      }
      else
      {
        diffXY_B = anglePlayerXYForB - angleRecorededXYForB;
      }
      
      float diffZY_A = 0;
      if(anglePlayerZYForA < angleRecorededZYForA )
      {
        diffZY_A = angleRecorededZYForA  - anglePlayerZYForA ;
      }
      else
      {
        diffZY_A = anglePlayerZYForA - angleRecorededZYForA;
      }
      
      float diffZY_B = 0;
      if(anglePlayerZYForB < angleRecorededZYForB )
      {
        diffZY_B = angleRecorededZYForB  - anglePlayerZYForB ;
      }
      else
      {
        diffZY_B = anglePlayerZYForB - angleRecorededZYForB;
      }
    
    if((diffXY_A < 15) && (diffXY_B < 15) && (diffZY_A < 35) && (diffZY_B < 35))
    {
      return 2;
    }
    else if((diffXY_A < 25) && (diffXY_B < 25) && (diffZY_A < 45) && (diffZY_B < 45))
    {
      return 1;
    }
    else
    {
      return 0;
    }
  }
  
  /*
  *  calculate neck angles of the patient and 
  *  exercise skeleton for the frame and return whether
  *  it was good, ok, bad 
  */
  public int kneck()
  {
      PVector leftShoulder = skeleton.getLeftShoulderPosition();    
      PVector rightShoulder = skeleton.getRightShoulderPosition();   
      PVector head = skeleton.getHeadPosition();     
      PVector kneck = skeleton.getKneckPosition();
      PVector torso = skeleton.getTorsoPosition();

      float angleRecorededXYForA = getAngleXY(leftShoulder, kneck, head);
      float angleRecorededXYForB = getAngleXY(rightShoulder, kneck, head);
      float angleRecorededZYForA = getAngleZY(torso, kneck, head);  
 
      leftShoulder = player1.getLeftShoulderPosition(current);
      rightShoulder = player1.getRightShoulderPosition(current);
      head = player1.getHeadPosition(current);
      kneck = player1.getKneckPosition(current);
      torso = player1.getTorsoPosition(current);
 
      float anglePlayerXYForA = getAngleXY(leftShoulder, kneck, head);
      float anglePlayerXYForB = getAngleXY(rightShoulder, kneck, head);
      float anglePlayerZYForA = getAngleZY(torso, kneck, head);

      float diffXY_A = 0;
      if(anglePlayerXYForA < angleRecorededXYForA )
      {
        diffXY_A = angleRecorededXYForA  - anglePlayerXYForA ;
      }
      else
      {
        diffXY_A = anglePlayerXYForA - angleRecorededXYForA;
      }
      
      float diffXY_B = 0;
      if(anglePlayerXYForB < angleRecorededXYForB )
      {
        diffXY_B = angleRecorededXYForB  - anglePlayerXYForB ;
      }
      else
      {
        diffXY_B = anglePlayerXYForB - angleRecorededXYForB;
      }
      
      float diffZY_A = 0;
      if(anglePlayerZYForA < angleRecorededZYForA )
      {
        diffZY_A = angleRecorededZYForA  - anglePlayerZYForA ;
      }
      else
      {
        diffZY_A = anglePlayerZYForA - angleRecorededZYForA;
      }
      
     
    if((diffXY_A < 15) && (diffXY_B < 15) && (diffZY_A < 35) )
    {
      return 2;
    }
    else if((diffXY_A < 25) && (diffXY_B < 25) && (diffZY_A < 45))
    {
      return 1;
    }
    else
    {
      return 0;
    }
  }
  /*
  *  Angle calculation for the XY coordinates
  */
  public float getAngleXY(PVector start, PVector joint, PVector end)
  {  //  angle subtraction to find the axis and direction
    PVector axis = new PVector(joint.x - start.x, joint.y - start.y);
    PVector direction = new PVector(end.x - joint.x, end.y - joint.y);
  
    //  pythagoras' therom to calculate the magnatude of the axis and direction
    float axis_Mag = sqrt((axis.x * axis.x) + (axis.y * axis.y));
    float direction_Mag = sqrt((direction.x * direction.x) + (direction.y * direction.y));

    // normalise the axis
    float axis_X = axis.x / axis_Mag;
    float axis_Y = axis.y / axis_Mag;
  
    // normailse the direction
    float direction_X = direction.x / direction_Mag;
    float direction_Y = direction.y / direction_Mag;
  
    //  the degrees of acos of the dot product found from the axis and direction to produce the angle
    float angle = degrees(acos((axis_X * direction_X) + (axis_Y * direction_Y)));
  
    return angle;
  }
  /*
  *  Angle calculation for the ZY coordinates
  */ 
  public float getAngleZY(PVector start, PVector joint,  PVector end)
  {
      PVector axis = new PVector(joint.z - start.z, joint.y - start.y);
      PVector direction = new PVector(end.z - joint.z, end.y - joint.y);
  
      //  pythagoras' therom to calculate the magnatude of the axis and direction
      float axis_Mag = sqrt((axis.z * axis.z) + (axis.y * axis.y));
      float direction_Mag = sqrt((direction.z * direction.z) + (direction.y * direction.y));

      // normalise the axis
      float axis_Z = axis.z / axis_Mag;
      float axis_Y = axis.y / axis_Mag;
  
      // normailse the direction
      float direction_Z = direction.z / direction_Mag;
      float direction_Y = direction.y / direction_Mag;
  
      //  the degrees of acos of the dot product found from the axis and direction to produce the angle
      float angle = degrees(acos((axis_Z * direction_Z) + (axis_Y * direction_Y)));
  
      return angle;
  }

  public int analiseSkeleton(Skeleton skeleton, int current)
  {
    this.skeleton = skeleton;
    this.current = current;
    int distance = 0;
    
    if(type.equals("Right Arm"))
    {
      return distance = rightArm();
    }
    else if(type.equals("Left Arm"))
    {
      return distance = leftArm();
    }
    else if(type.equals("Right Leg"))
    {
      return distance = rightLeg();
    }
    else if(type.equals("Left Leg"))
    {
      return distance = leftLeg();
    }
    else
    {
      return distance = kneck();
    }
    
  }
  
  /*
  *  used to work out one eketons angle in the case of the find range
  *  of motion function
  */
  public ArrayList getAngles(String type, Skeleton skel)
  {
    
    if(type.equals("Left Leg"))
    {
      return singleLeftLeg(skel);
    }
    else if(type.equals("Right Leg"))
    {
      return singleRightLeg(skel);
    }
    else if(type.equals("Left Arm"))
    {
      return singleLeftArm(skel);
    }
    else if(type.equals("Right Arm"))
    {
      return singleRightArm(skel);
    }
    else
    {
      return singleKneck(skel);
    }
    
  }
  
 
  public ArrayList singleKneck(Skeleton skel)
  {
     
    ArrayList <String> angles = new ArrayList();
    
    PVector leftShoulder = skel.getLeftShoulderPosition();
    PVector rightShoulder = skel.getRightShoulderPosition();
    PVector head = skel.getHeadPosition();
    PVector kneck = skel.getKneckPosition();
    PVector torso = skel.getTorsoPosition();
      
    float angleRecorededXYForA = getAngleXY(leftShoulder, kneck, head);
    float angleRecorededXYForB = getAngleXY(rightShoulder, kneck, head);
    float angleRecorededZYForA = getAngleZY(torso, kneck, head);  
      
   angles.add(String.valueOf(angleRecorededXYForA));
   angles.add(String.valueOf(angleRecorededXYForB));
   angles.add(String.valueOf(angleRecorededZYForA));
   
   return angles;
    
  }
  /*
  *  Angle calculation for one skeletons left leg limbs
  */
  public ArrayList singleLeftLeg(Skeleton skel)
  {
     
    ArrayList <String> angles = new ArrayList();
    
    PVector leftFoot = skeleton.getLeftFootPosition();
    PVector leftKnee = skeleton.getLeftKneePosition();
    PVector rightHip = skeleton.getRightHipPosition();
    PVector leftHip = skeleton.getLeftHipPosition();
    PVector torso = skeleton.getTorsoPosition();
    
    float angleRecorededXYForA = getAngleXY(rightHip, leftHip, leftKnee);
    float angleRecorededXYForB = getAngleXY(leftHip, leftKnee, leftFoot);
    float angleRecorededZYForA = getAngleZY(torso, leftHip, leftKnee);  //  different starting point as it makes no sense to use left hip
    float angleRecorededZYForB = getAngleZY(leftHip, leftKnee, leftFoot); 
 
      
     angles.add(String.valueOf(angleRecorededXYForA));
     angles.add(String.valueOf(angleRecorededXYForB));
     angles.add(String.valueOf(angleRecorededZYForA));
     angles.add(String.valueOf(angleRecorededZYForB));
   
     return angles;
    
  }
  /*
  *  Angle calculation for one skeletons right leg limbs
  */
  public ArrayList singleRightLeg(Skeleton skel)
  {
     
    ArrayList <String> angles = new ArrayList();
    
    PVector rightFoot = skeleton.getRightFootPosition();
    PVector rightKnee = skeleton.getRightKneePosition();
    PVector rightHip = skeleton.getRightHipPosition();
    PVector leftHip = skeleton.getLeftHipPosition();
    PVector torso = skeleton.getTorsoPosition();
    
    float angleRecorededXYForA = getAngleXY(leftHip, rightHip, rightKnee);
    float angleRecorededXYForB = getAngleXY(rightHip, rightKnee, rightFoot);
    float angleRecorededZYForA = getAngleZY(torso, rightHip, rightKnee);  //  different starting point as it makes no sense to use left hip
    float angleRecorededZYForB = getAngleZY(rightHip, rightKnee, rightFoot); 
 
      
     angles.add(String.valueOf(angleRecorededXYForA));
     angles.add(String.valueOf(angleRecorededXYForB));
     angles.add(String.valueOf(angleRecorededZYForA));
     angles.add(String.valueOf(angleRecorededZYForB));
   
     return angles;
    
  }
  /*
  *  Angle calculation for one skeletons left arm limbs
  */
  public ArrayList singleLeftArm(Skeleton skel)
  {
     
    ArrayList <String> angles = new ArrayList();
    
    PVector leftHand = skeleton.getLeftHandPosition();
    PVector leftElbow = skeleton.getLeftElbowPosition();
    PVector leftShoulder = skeleton.getLeftShoulderPosition();
    PVector torso = skeleton.getTorsoPosition();

    float angleRecorededXYForA = getAngleXY(torso, leftShoulder, leftElbow);
    float angleRecorededXYForB = getAngleXY(leftShoulder, leftElbow, leftHand);
      
    float angleRecorededZYForA = getAngleZY(torso, leftShoulder, leftElbow);
    float angleRecorededZYForB = getAngleZY(leftShoulder, leftElbow, leftHand);
 
      
     angles.add(String.valueOf(angleRecorededXYForA));
     angles.add(String.valueOf(angleRecorededXYForB));
     angles.add(String.valueOf(angleRecorededZYForA));
     angles.add(String.valueOf(angleRecorededZYForB));
   
     return angles;
    
  }
  /*
  *  Angle calculation for one skeletons rigth arm limbs
  */
  public ArrayList singleRightArm(Skeleton skel)
  {
     
    ArrayList <String> angles = new ArrayList();
    
    PVector rightHand = skeleton.getRightHandPosition();
    PVector rightElbow = skeleton.getRightElbowPosition();
    PVector rightShoulder = skeleton.getRightShoulderPosition();
    PVector torso = skeleton.getTorsoPosition();

    float angleRecorededXYForA = getAngleXY(torso, rightShoulder, rightElbow);
    float angleRecorededXYForB = getAngleXY(rightShoulder, rightElbow, rightHand);
      
    float angleRecorededZYForA = getAngleZY(torso, rightShoulder, rightElbow);
    float angleRecorededZYForB = getAngleZY(rightShoulder, rightElbow, rightHand);
 
      
     angles.add(String.valueOf(angleRecorededXYForA));
     angles.add(String.valueOf(angleRecorededXYForB));
     angles.add(String.valueOf(angleRecorededZYForA));
     angles.add(String.valueOf(angleRecorededZYForB));
   
     return angles;
    
  }
    
  
}
