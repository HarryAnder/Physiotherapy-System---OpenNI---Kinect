/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  SkeletonDifference
*  takes the sizes of two skeletons
*  and works out the difference between
*  each bone
*/

class SkeletonDifference extends SkeletonSize
{
  SkeletonSize skeletonSize1, skeletonSize2;
  
  public void SkeletonDifference()
  {
    
  }
  /*
  *  work out the differnce of the bones of the given two skeletons
  */
  public void setSkeletonSizes(SkeletonSize s1, SkeletonSize s2)
  {
    
    skeletonSize1 = s1;
    skeletonSize2 = s2;
    
    print("lower left leg: ");
    leftLowerLeg = getPercentage(skeletonSize1.getLeftLowerLeg(), skeletonSize2.getLeftLowerLeg());
    print("upper left leg: ");
    leftUpperLeg = getPercentage(skeletonSize1.getLeftUpperLeg(), skeletonSize2.getLeftUpperLeg());
    print("hip: ");
    hip = getPercentage(skeletonSize1.getHip(), skeletonSize2.getHip());
    print("lower right leg: ");
    rightLowerLeg = getPercentage(skeletonSize1.getRightLowerLeg(), skeletonSize2.getRightLowerLeg());
    print("upper left leg: ");
    rightUpperLeg = getPercentage(skeletonSize1.getRightUpperLeg(), skeletonSize2.getRightUpperLeg());
    print("left hip torso: ");
    leftHipTorso = getPercentage(skeletonSize1.getLeftHipTorso(), skeletonSize2.getLeftHipTorso());
    print("right hip torso: ");
    rightHipTorso = getPercentage(skeletonSize1.getRightHipTorso(), skeletonSize2.getRightHipTorso());
    print("left torso shoulder: ");
    leftTorsoShoulder = getPercentage(skeletonSize1.getLeftTorsoShoulder(), skeletonSize2.getLeftTorsoShoulder());
    print("right torso shoulder: ");
    rightTorsoShoulder = getPercentage(skeletonSize1.getRightTorsoShoulder(), skeletonSize2.getRightTorsoShoulder());
    print("upper left arm: ");
    leftUpperArm = getPercentage(skeletonSize1.getLeftUpperArm(), skeletonSize2.getLeftUpperArm());
    print("lower left arm: ");
    leftLowerArm = getPercentage(skeletonSize1.getLeftLowerArm(), skeletonSize2.getLeftLowerArm());
    print("upper right arm: ");
    rightUpperArm = getPercentage(skeletonSize1.getRightUpperArm(), skeletonSize2.getRightUpperArm());
    print("lower right arm: ");
    rightLowerArm = getPercentage(skeletonSize1.getRightLowerArm(), skeletonSize2.getRightLowerArm());
    print("left shoulder Kneck: ");
    leftShoulderKneck  = getPercentage(skeletonSize1.getLeftShoulderKneck(), skeletonSize2.getLeftShoulderKneck());
    print("right shoulder Kneck: ");
    rightShoulderKneck = getPercentage(skeletonSize1.getRightShoulderKneck(), skeletonSize2.getRightShoulderKneck());
    print("Kneck head: ");
    kneckHead = getPercentage(skeletonSize1.getKneckHead(), skeletonSize2.getKneckHead());
    println("");

  }
  
  /*
  *  work out precentage
  */
  public float getPercentage(float bone1, float bone2)
  {
    
    float percentage = (bone2 - bone1) / bone1;
    println(percentage);
    return percentage;
  }
}
