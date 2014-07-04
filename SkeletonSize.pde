/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  SkeletonSize takes a skeleton
*  and works out how long each bone is
*/

public class SkeletonSize 
{
  Skeleton skeleton;
  float leftLowerLeg;
  float leftUpperLeg;
  float hip;
  float rightLowerLeg;
  float rightUpperLeg;
  float leftHipTorso;
  float rightHipTorso;
  float leftTorsoShoulder;
  float rightTorsoShoulder;
  float leftUpperArm;
  float leftLowerArm;
  float rightUpperArm;
  float rightLowerArm;
  float leftShoulderKneck;
  float rightShoulderKneck;
  float kneckHead;
  
  public void SkeletonSize()
  {
  }
  
  public void setSkeleton(Skeleton s)
  {
    
    skeleton = s;
    print("lower left leg: ");
    leftLowerLeg = getSize(skeleton.getLeftFootPosition(), skeleton.getLeftKneePosition());
    print("upper left leg: ");
    leftUpperLeg = getSize(skeleton.getLeftKneePosition(), skeleton.getLeftHipPosition());
    print("hip: ");
    hip = getSize(skeleton.getLeftHipPosition(), skeleton.getRightHipPosition());
    print("lower right leg: ");
    rightLowerLeg = getSize(skeleton.getRightFootPosition(), skeleton.getRightKneePosition());
    print("upper left leg: ");
    rightUpperLeg = getSize(skeleton.getRightKneePosition(), skeleton.getRightHipPosition());
    print("left hip torso: ");
    leftHipTorso = getSize(skeleton.getLeftHipPosition(), skeleton.getTorsoPosition());
    print("right hip torso: ");
    rightHipTorso = getSize(skeleton.getRightHipPosition(), skeleton.getTorsoPosition());
    print("left torso shoulder: ");
    leftTorsoShoulder = getSize(skeleton.getTorsoPosition(), skeleton.getLeftShoulderPosition());
    print("right torso shoulder: ");
    rightTorsoShoulder = getSize(skeleton.getTorsoPosition(), skeleton.getRightShoulderPosition());
    print("upper left arm: ");
    leftUpperArm = getSize(skeleton.getLeftShoulderPosition(), skeleton.getLeftElbowPosition());
    print("lower left arm: ");
    leftLowerArm = getSize(skeleton.getLeftElbowPosition(), skeleton.getLeftHandPosition());
    print("upper right arm: ");
    rightUpperArm = getSize(skeleton.getRightShoulderPosition(), skeleton.getRightElbowPosition());
    print("lower right arm: ");
    rightLowerArm = getSize(skeleton.getRightElbowPosition(), skeleton.getRightHandPosition());
    print("left shoulder Kneck: ");
    leftShoulderKneck  = getSize(skeleton.getLeftShoulderPosition(), skeleton.getKneckPosition() );
    print("right shoulder Kneck: ");
    rightShoulderKneck = getSize(skeleton.getKneckPosition(), skeleton.getRightShoulderPosition());
    print("Kneck head: ");
    kneckHead = getSize(skeleton.getKneckPosition(), skeleton.getHeadPosition());
    println("");
  }
  /*
  *  get the size of a bone given two joints
  */
  public float getSize(PVector joint1, PVector joint2)
  {
    float x = (joint1.x - joint2.x);
    float y = (joint1.y - joint2.y);
    float z = (joint1.z - joint2.z);
    x = x * x;
    y = y * y;
    z = z * z;
    float boneSize = sqrt(x + y + z);
    println(boneSize);
    return boneSize;
  }
  
  
  public float getLeftLowerLeg()
  {
    return leftLowerLeg;
  }
  public float getLeftUpperLeg()
  {
    return leftUpperLeg;
  }
  public float getHip()
  {
    return hip;
  }
  public float getRightLowerLeg()
  {
    return rightLowerLeg;
  }
  public float getRightUpperLeg()
  {
    return rightUpperLeg;
  }
  public float getLeftHipTorso()
  {
    return leftHipTorso;
  }
  public float getRightHipTorso()
  {
    return rightHipTorso;
  }
  public float getLeftTorsoShoulder()
  {
    return leftTorsoShoulder;
  }
  public float getRightTorsoShoulder()
  {
    return rightTorsoShoulder;
  }
  public float getLeftUpperArm()
  {
    return leftUpperArm;
  }
  public float getLeftLowerArm()
  {
    return leftLowerArm;
  }
  public float getRightUpperArm()
  {
    return rightUpperArm;
  }
  public float getRightLowerArm()
  {
    return rightLowerArm;
  }
    public float getLeftShoulderKneck()
  {
    return leftShoulderKneck;
  }
  public float getRightShoulderKneck()
  {
    return rightShoulderKneck;
  }
  public float getKneckHead()
  {
    return kneckHead;
  }
  
  
}
