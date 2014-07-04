/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  SkeletonPlayer extends
*  SkeletonRecorder it is used
*  to play a recording or an exercise
*/


class SkeletonPlayer extends SkeletonRecorder
{
    int currentFrame, numberOfFrames;

    public void SkeletonPlayer()
    {
       currentFrame = 0;
       numberOfFrames = 0;
    }
    
    public int getCurrentFrame()
    {
      return currentFrame;
    }
    public int getNumberOfFrames()
    {
      return numberOfFrames;
    }
    public void setHeadPosition(double x, double y, double z)
    {
        
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_HEAD.add(joint);
        
    }
    public void setKneckPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_NECK.add(joint);
    }
    public void setLeftShoulderPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_SHOULDER.add(joint);
    }
    public void setLeftElbowPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_ELBOW.add(joint);
    }
    public void setLeftHandPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_HAND.add(joint);
    }
    public void setRightShoulderPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_SHOULDER.add(joint);
    }
    public void setRightElbowPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_ELBOW.add(joint);
    }
    public void setTorsoPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_TORSO.add(joint);
    }
    public void setLeftHipPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_HIP.add(joint);
    }
    public void setLeftKneePosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_KNEE.add(joint);
    }
    public void setRightHipPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_HIP.add(joint);
    }
    public void setLeftFootPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_LEFT_FOOT.add(joint);
    }
    public void setRightKneePosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_KNEE.add(joint);
    }
    public void setRightFootPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_FOOT.add(joint);
    }
    public void setRightHandPosition(double x, double y, double z)
    {
        PVector joint = new PVector((float) x, (float) y,(float) z);
        frames_SKEL_RIGHT_HAND.add(joint);
        numberOfFrames++;
    }
    public void incrementFrame()
    {
      currentFrame++;
    }
    
  /*
  *  draw the limbs and bones for the current frame
  */
    public void playSkeleton()
    {
     
        drawJoint(frames_SKEL_LEFT_FOOT.get(currentFrame));
        drawBone(frames_SKEL_LEFT_FOOT.get(currentFrame)
        , frames_SKEL_LEFT_KNEE.get(currentFrame));
        
        drawJoint(frames_SKEL_LEFT_KNEE.get(currentFrame));
        drawBone(frames_SKEL_LEFT_KNEE.get(currentFrame)
        , frames_SKEL_LEFT_HIP.get(currentFrame));
        
        drawJoint(frames_SKEL_LEFT_HIP.get(currentFrame));
        drawBone(frames_SKEL_LEFT_HIP.get(currentFrame)
        , frames_SKEL_TORSO.get(currentFrame));
        drawBone(frames_SKEL_LEFT_HIP.get(currentFrame)
        , frames_SKEL_RIGHT_HIP.get(currentFrame));
        
        drawJoint(frames_SKEL_TORSO.get(currentFrame));
        drawBone(frames_SKEL_TORSO.get(currentFrame)
        , frames_SKEL_LEFT_SHOULDER.get(currentFrame));
        drawBone(frames_SKEL_TORSO.get(currentFrame)
        , frames_SKEL_RIGHT_HIP.get(currentFrame));
        drawBone(frames_SKEL_TORSO.get(currentFrame)
        , frames_SKEL_RIGHT_SHOULDER.get(currentFrame));
        
        drawJoint(frames_SKEL_LEFT_SHOULDER.get(currentFrame));
        drawBone(frames_SKEL_LEFT_SHOULDER.get(currentFrame)
        , frames_SKEL_LEFT_ELBOW.get(currentFrame));
        drawBone(frames_SKEL_LEFT_SHOULDER.get(currentFrame)
        , frames_SKEL_NECK.get(currentFrame));
        
        drawJoint(frames_SKEL_LEFT_ELBOW.get(currentFrame));
        drawBone(frames_SKEL_LEFT_ELBOW.get(currentFrame)
        , frames_SKEL_LEFT_HAND.get(currentFrame));
        
        drawJoint(frames_SKEL_LEFT_HAND.get(currentFrame));
        
        drawJoint(frames_SKEL_NECK.get(currentFrame));
        drawBone(frames_SKEL_NECK.get(currentFrame)
        , frames_SKEL_HEAD.get(currentFrame));
        drawBone(frames_SKEL_NECK.get(currentFrame)
        , frames_SKEL_RIGHT_SHOULDER.get(currentFrame));
        
        drawJoint(frames_SKEL_HEAD.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_SHOULDER.get(currentFrame));
        drawBone(frames_SKEL_RIGHT_SHOULDER.get(currentFrame)
        , frames_SKEL_RIGHT_ELBOW.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_ELBOW.get(currentFrame));
        drawBone(frames_SKEL_RIGHT_ELBOW.get(currentFrame)
        , frames_SKEL_RIGHT_HAND.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_HAND.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_HIP.get(currentFrame));
        drawBone(frames_SKEL_RIGHT_HIP.get(currentFrame)
        , frames_SKEL_RIGHT_KNEE.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_KNEE.get(currentFrame));
        drawBone(frames_SKEL_RIGHT_KNEE.get(currentFrame)
        , frames_SKEL_RIGHT_FOOT.get(currentFrame));
        
        drawJoint(frames_SKEL_RIGHT_FOOT.get(currentFrame));
        
        
     
       //println(currentFrame);
    }
    //  from hear is used for skeleton adjustment
    public void setHeadPosition(PVector joint)
    {
        frames_SKEL_HEAD.add(joint);
    }
    public void setKneckPosition(PVector joint)
    {
        frames_SKEL_NECK.add(joint);
    }
    public void setLeftShoulderPosition(PVector joint)
    {
        frames_SKEL_LEFT_SHOULDER.add(joint);
    }
    public void setLeftElbowPosition(PVector joint)
    {
        frames_SKEL_LEFT_ELBOW.add(joint);
    }
    public void setLeftHandPosition(PVector joint)
    {
        frames_SKEL_LEFT_HAND.add(joint);
    }
    public void setRightShoulderPosition(PVector joint)
    {
        frames_SKEL_RIGHT_SHOULDER.add(joint);
    }
    public void setRightElbowPosition(PVector joint)
    {
        frames_SKEL_RIGHT_ELBOW.add(joint);
    }
    public void setTorsoPosition(PVector joint)
    {
        frames_SKEL_TORSO.add(joint);
    }
    public void setLeftHipPosition(PVector joint)
    {
        frames_SKEL_LEFT_HIP.add(joint);
    }
    public void setLeftKneePosition(PVector joint)
    {
        frames_SKEL_LEFT_KNEE.add(joint);
    }
    public void setRightHipPosition(PVector joint)
    {
        frames_SKEL_RIGHT_HIP.add(joint);
    }
    public void setLeftFootPosition(PVector joint)
    {
        frames_SKEL_LEFT_FOOT.add(joint);
    }
    public void setRightKneePosition(PVector joint)
    {
        frames_SKEL_RIGHT_KNEE.add(joint);
    }
    public void setRightFootPosition(PVector joint)
    {
        frames_SKEL_RIGHT_FOOT.add(joint);
    }
    public void setRightHandPosition(PVector joint)
    {
        frames_SKEL_RIGHT_HAND.add(joint);
        numberOfFrames++;
    }
    
    public PVector getHeadPosition(int frame)
    {
        return frames_SKEL_HEAD.get(frame);  
    }
    public PVector getKneckPosition(int frame)
    {
        return frames_SKEL_NECK.get(frame); 
    }
    public PVector getLeftShoulderPosition(int frame)
    {
        return frames_SKEL_LEFT_SHOULDER.get(frame); 
    }
    public PVector getLeftElbowPosition(int frame)
    {
        return frames_SKEL_LEFT_ELBOW.get(frame); 
    }
    public PVector getLeftHandPosition(int frame)
    {
        return frames_SKEL_LEFT_HAND.get(frame); 
    }
    public PVector getRightShoulderPosition(int frame)
    {
        return frames_SKEL_RIGHT_SHOULDER.get(frame); 
    }
    public PVector getRightElbowPosition(int frame)
    {
        return frames_SKEL_RIGHT_ELBOW.get(frame); 
    }
    public PVector getTorsoPosition(int frame)
    {
        return frames_SKEL_TORSO.get(frame); 
    }
    public PVector getLeftHipPosition(int frame)
    {
        return frames_SKEL_LEFT_HIP.get(frame); 
    }
    public PVector getLeftKneePosition(int frame)
    {
        return frames_SKEL_LEFT_KNEE.get(frame); 
    }
    public PVector getRightHipPosition(int frame)
    {
        return frames_SKEL_RIGHT_HIP.get(frame); 
    }
    public PVector getLeftFootPosition(int frame)
    {
        return frames_SKEL_LEFT_FOOT.get(frame); 
    }
    public PVector getRightKneePosition(int frame)
    {
        return frames_SKEL_RIGHT_KNEE.get(frame); 
    }
    public PVector getRightFootPosition(int frame)
    {
        return frames_SKEL_RIGHT_FOOT.get(frame); 
    }
    public PVector getRightHandPosition(int frame)
    {
        return frames_SKEL_RIGHT_HAND.get(frame); 
 
    }
    
    
}
