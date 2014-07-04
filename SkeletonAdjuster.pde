/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  SkeletonAdjuster takes the difference
*  of two skeletons and adjusts the players
*  skeletons to match the patients 
*/

class SkeletonAdjuster
{
  SkeletonDifference difference;
  Skeleton playerBefore, playerAfter;
  
  public void SkeletonAdjuster()
  {
  }
  
/*
*  pass the adjuste the difference and a skeleton
*/
  public void setAdjuster(SkeletonDifference d, Skeleton p)
  {
    difference = d;
    playerBefore = p;
    playerAfter = new Skeleton();
    //reverseSkeleton();
    adjustSkeleton();
    //reverseSkeletonBack();
  }
/*
 *  adjust the bones by the diffence
 */
  public void adjustSkeleton()
  {
    float diffX = 0.0, diffY = 0.0, diffZ = 0.0;
    PVector joint = new PVector();
      
      playerAfter.setHeadPosition(playerBefore.getHeadPosition());
    
      joint.x = playerBefore.getKneckPosition().x -  playerBefore.getHeadPosition().x; 
      joint.y = playerBefore.getKneckPosition().y -  playerBefore.getHeadPosition().y;
      joint.z = playerBefore.getKneckPosition().z -  playerBefore.getHeadPosition().z;
      
      diffX = (joint.x * difference.getKneckHead());
      diffY = (joint.y * difference.getKneckHead());
      diffZ = (joint.z * difference.getKneckHead());
      
      joint.x = (joint.x + diffX) + playerAfter.getHeadPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getHeadPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getHeadPosition().z;
      
      playerAfter.setKneckPosition(joint);
      
      println("new " +  playerAfter.getKneckPosition().y);
      
      joint = new PVector();

      println("a" + playerBefore.getLeftShoulderPosition().x);
      println("b" + playerBefore.getKneckPosition().x);
      joint.x = playerBefore.getLeftShoulderPosition().x -  playerBefore.getKneckPosition().x;
      joint.y = playerBefore.getLeftShoulderPosition().y -  playerBefore.getKneckPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftShoulderPosition().z -  playerBefore.getKneckPosition().z;
     
      diffX = (joint.x * difference.getLeftShoulderKneck());
      diffY = (joint.y * difference.getLeftShoulderKneck());
      diffZ = (joint.z * difference.getLeftShoulderKneck());
      
      joint.x = (joint.x + diffX) + playerAfter.getKneckPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getKneckPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getKneckPosition().z;
      
      playerAfter.setLeftShoulderPosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getRightShoulderPosition().x -  playerBefore.getKneckPosition().x;
      joint.y = playerBefore.getRightShoulderPosition().y -  playerBefore.getKneckPosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightShoulderPosition().z -  playerBefore.getKneckPosition().z;
     
      diffX = (joint.x * difference.getRightShoulderKneck());
      diffY = (joint.y * difference.getRightShoulderKneck());
      diffZ = (joint.z * difference.getRightShoulderKneck());
      
      joint.x = (joint.x + diffX) + playerAfter.getKneckPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getKneckPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getKneckPosition().z;
      
      playerAfter.setRightShoulderPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getLeftElbowPosition().x -  playerBefore.getLeftShoulderPosition().x;
      joint.y = playerBefore.getLeftElbowPosition().y -  playerBefore.getLeftShoulderPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftElbowPosition().z -  playerBefore.getLeftShoulderPosition().z;
     
      diffX = (joint.x * difference.getLeftUpperArm());
      diffY = (joint.y * difference.getLeftUpperArm());
      diffZ = (joint.z * difference.getLeftUpperArm());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftShoulderPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftShoulderPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftShoulderPosition().z;
      
      playerAfter.setLeftElbowPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getLeftHandPosition().x -  playerBefore.getLeftElbowPosition().x;
      joint.y = playerBefore.getLeftHandPosition().y -  playerBefore.getLeftElbowPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftHandPosition().z -  playerBefore.getLeftElbowPosition().z;
     
      diffX = (joint.x * difference.getLeftLowerArm());
      diffY = (joint.y * difference.getLeftLowerArm());
      diffZ = (joint.z * difference.getLeftLowerArm());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftElbowPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftElbowPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftElbowPosition().z;
      
      playerAfter.setLeftHandPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getRightElbowPosition().x -  playerBefore.getRightShoulderPosition().x;
      joint.y = playerBefore.getRightElbowPosition().y -  playerBefore.getRightShoulderPosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightElbowPosition().z -  playerBefore.getRightShoulderPosition().z;
     
      diffX = (joint.x * difference.getRightUpperArm());
      diffY = (joint.y * difference.getRightUpperArm());
      diffZ = (joint.z * difference.getRightUpperArm());
      
      joint.x = (joint.x + diffX) + playerAfter.getRightShoulderPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getRightShoulderPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getRightShoulderPosition().z;
      
      playerAfter.setRightElbowPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getRightHandPosition().x -  playerBefore.getRightElbowPosition().x;
      joint.y = playerBefore.getRightHandPosition().y -  playerBefore.getRightElbowPosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightHandPosition().z -  playerBefore.getRightElbowPosition().z;
     
      diffX = (joint.x * difference.getRightLowerArm());
      diffY = (joint.y * difference.getRightLowerArm());
      diffZ = (joint.z * difference.getRightLowerArm());
      
      joint.x = (joint.x + diffX) + playerAfter.getRightElbowPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getRightElbowPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getRightElbowPosition().z;
      
      playerAfter.setRightHandPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getTorsoPosition().x -  playerBefore.getLeftShoulderPosition().x;
      joint.y = playerBefore.getTorsoPosition().y -  playerBefore.getLeftShoulderPosition().y;
      println(joint.x);
      joint.z = playerBefore.getTorsoPosition().z -  playerBefore.getLeftShoulderPosition().z;
     
      diffX = (joint.x * difference.getLeftTorsoShoulder());
      diffY = (joint.y * difference.getLeftTorsoShoulder());
      diffZ = (joint.z * difference.getLeftTorsoShoulder());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftShoulderPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftShoulderPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftShoulderPosition().z;
      
      playerAfter.setTorsoPosition(joint);
      
      joint = new PVector();
    
      joint.x = playerBefore.getTorsoPosition().x -  playerBefore.getLeftShoulderPosition().x;
      joint.y = playerBefore.getTorsoPosition().y -  playerBefore.getLeftShoulderPosition().y;
      println(joint.x);
      joint.z = playerBefore.getTorsoPosition().z -  playerBefore.getLeftShoulderPosition().z;
     
      diffX = (joint.x * difference.getLeftTorsoShoulder());
      diffY = (joint.y * difference.getLeftTorsoShoulder());
      diffZ = (joint.z * difference.getLeftTorsoShoulder());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftShoulderPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftShoulderPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftShoulderPosition().z;
      
      
      playerAfter.setTorsoPosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getLeftHipPosition().x -  playerBefore.getTorsoPosition().x;
      joint.y = playerBefore.getLeftHipPosition().y -  playerBefore.getTorsoPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftHipPosition().z -  playerBefore.getTorsoPosition().z;
     
      diffX = (joint.x * difference.getLeftHipTorso());
      diffY = (joint.y * difference.getLeftHipTorso());
      diffZ = (joint.z * difference.getLeftHipTorso());
      
      joint.x = (joint.x + diffX) + playerAfter.getTorsoPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getTorsoPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getTorsoPosition().z;
      
      playerAfter.setLeftHipPosition(joint);
      
      joint = new PVector();
      
      joint.x = playerBefore.getLeftHipPosition().x -  playerBefore.getTorsoPosition().x;
      joint.y = playerBefore.getLeftHipPosition().y -  playerBefore.getTorsoPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftHipPosition().z -  playerBefore.getTorsoPosition().z;
     
      diffX = (joint.x * difference.getLeftHipTorso());
      diffY = (joint.y * difference.getLeftHipTorso());
      diffZ = (joint.z * difference.getLeftHipTorso());
      
      joint.x = (joint.x + diffX) + playerAfter.getTorsoPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getTorsoPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getTorsoPosition().z;
      
      playerAfter.setLeftHipPosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getRightHipPosition().x -  playerBefore.getLeftHipPosition().x;
      joint.y = playerBefore.getRightHipPosition().y -  playerBefore.getLeftHipPosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightHipPosition().z -  playerBefore.getLeftHipPosition().z;
     
      diffX = (joint.x * difference.getHip());
      diffY = (joint.y * difference.getHip());
      diffZ = (joint.z * difference.getHip());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftHipPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftHipPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftHipPosition().z;

      playerAfter.setRightHipPosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getLeftKneePosition().x -  playerBefore.getLeftHipPosition().x;
      joint.y = playerBefore.getLeftKneePosition().y -  playerBefore.getLeftHipPosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftKneePosition().z -  playerBefore.getLeftHipPosition().z;
     
      diffX = (joint.x * difference.getLeftUpperLeg());
      diffY = (joint.y * difference.getLeftUpperLeg());
      diffZ = (joint.z * difference.getLeftUpperLeg());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftHipPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftHipPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftHipPosition().z;
 
      playerAfter.setLeftKneePosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getLeftFootPosition().x -  playerBefore.getLeftKneePosition().x;
      joint.y = playerBefore.getLeftFootPosition().y -  playerBefore.getLeftKneePosition().y;
      println(joint.x);
      joint.z = playerBefore.getLeftFootPosition().z -  playerBefore.getLeftKneePosition().z;
     
      diffX = (joint.x * difference.getLeftLowerLeg());
      diffY = (joint.y * difference.getLeftLowerLeg());
      diffZ = (joint.z * difference.getLeftLowerLeg());
      
      joint.x = (joint.x + diffX) + playerAfter.getLeftKneePosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getLeftKneePosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getLeftKneePosition().z;
      
      playerAfter.setLeftFootPosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getRightKneePosition().x -  playerBefore.getRightHipPosition().x;
      joint.y = playerBefore.getRightKneePosition().y -  playerBefore.getRightHipPosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightKneePosition().z -  playerBefore.getRightHipPosition().z;
     
      diffX = (joint.x * difference.getRightUpperLeg());
      diffY = (joint.y * difference.getRightUpperLeg());
      diffZ = (joint.z * difference.getRightUpperLeg());
      
      joint.x = (joint.x + diffX) + playerAfter.getRightHipPosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getRightHipPosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getRightHipPosition().z;
      
      playerAfter.setRightKneePosition(joint);
      
      joint = new PVector();

      joint.x = playerBefore.getRightFootPosition().x -  playerBefore.getRightKneePosition().x;
      joint.y = playerBefore.getRightFootPosition().y -  playerBefore.getRightKneePosition().y;
      println(joint.x);
      joint.z = playerBefore.getRightFootPosition().z -  playerBefore.getRightKneePosition().z;
     
      diffX = (joint.x * difference.getRightLowerLeg());
      diffY = (joint.y * difference.getRightLowerLeg());
      diffZ = (joint.z * difference.getRightLowerLeg());
      
      joint.x = (joint.x + diffX) + playerAfter.getRightKneePosition().x;
      joint.y = (joint.y + diffY) + playerAfter.getRightKneePosition().y;
      joint.z = (joint.z + diffZ) + playerAfter.getRightKneePosition().z;
      
      playerAfter.setRightFootPosition(joint); 
  }
  
  /*
  *  return the new adjusted skeleton
  */
  public Skeleton getNewPlayer()
  {
    return playerAfter;
  }
  /*
  *  skeleton is upside down to so change it so y goes up
  */
  public void reverseSkeleton()
  {
    playerBefore.setHeadPosition(reverseJoint(playerBefore.getHeadPosition()));
    playerBefore.setKneckPosition(reverseJoint(playerBefore.getKneckPosition()));
    playerBefore.setLeftShoulderPosition(reverseJoint(playerBefore.getLeftShoulderPosition()));
    playerBefore.setLeftElbowPosition(reverseJoint(playerBefore.getLeftElbowPosition()));
    playerBefore.setLeftHandPosition(reverseJoint(playerBefore.getLeftHandPosition()));
    playerBefore.setRightShoulderPosition(reverseJoint(playerBefore.getRightShoulderPosition()));
    playerBefore.setRightElbowPosition(reverseJoint(playerBefore.getRightElbowPosition()));
    playerBefore.setRightHandPosition(reverseJoint(playerBefore.getRightHandPosition()));
    playerBefore.setTorsoPosition(reverseJoint(playerBefore.getTorsoPosition()));
    playerBefore.setLeftHipPosition(reverseJoint(playerBefore.getLeftHipPosition()));
    playerBefore.setLeftKneePosition(reverseJoint(playerBefore.getLeftKneePosition()));
    playerBefore.setLeftFootPosition(reverseJoint(playerBefore.getLeftFootPosition()));
    playerBefore.setRightHipPosition(reverseJoint(playerBefore.getRightHipPosition()));
    playerBefore.setRightKneePosition(reverseJoint(playerBefore.getRightKneePosition()));
    playerBefore.setRightFootPosition(reverseJoint(playerBefore.getRightFootPosition()));
    
  }
  /*
  *  reverse the skeleton limb to y goes up 
  */
  public PVector reverseJoint(PVector p)
  {
    PVector j = new PVector(p.x, ((p.y - 630) * -1), p.z);
    return j;
  }
  /*
  *  reverse it back so y goes down again
  */
  public void reverseSkeletonBack()
  {
    playerAfter.setHeadPosition(reverseJointBack(playerAfter.getHeadPosition()));
    playerAfter.setKneckPosition(reverseJointBack(playerAfter.getKneckPosition()));
    playerAfter.setLeftShoulderPosition(reverseJointBack(playerAfter.getLeftShoulderPosition()));
    playerAfter.setLeftElbowPosition(reverseJointBack(playerAfter.getLeftElbowPosition()));
    playerAfter.setLeftHandPosition(reverseJointBack(playerAfter.getLeftHandPosition()));
    playerAfter.setRightShoulderPosition(reverseJointBack(playerAfter.getRightShoulderPosition()));
    playerAfter.setRightElbowPosition(reverseJointBack(playerAfter.getRightElbowPosition()));
    playerAfter.setRightHandPosition(reverseJointBack(playerAfter.getRightHandPosition()));
    playerAfter.setTorsoPosition(reverseJointBack(playerAfter.getTorsoPosition()));
    playerAfter.setLeftHipPosition(reverseJointBack(playerAfter.getLeftHipPosition()));
    playerAfter.setLeftKneePosition(reverseJointBack(playerAfter.getLeftKneePosition()));
    playerAfter.setLeftFootPosition(reverseJointBack(playerAfter.getLeftFootPosition()));
    playerAfter.setRightHipPosition(reverseJointBack(playerAfter.getRightHipPosition()));
    playerAfter.setRightKneePosition(reverseJointBack(playerAfter.getRightKneePosition()));
    playerAfter.setRightFootPosition(reverseJointBack(playerAfter.getRightFootPosition()));
  }
  /*
  *  reverse the skeleton limb to y goes down 
  */
  public PVector reverseJointBack(PVector p)
  {
    PVector j = new PVector(p.x, ((p.y * -1) + 630), p.z);
    return j;
  }
  
}
