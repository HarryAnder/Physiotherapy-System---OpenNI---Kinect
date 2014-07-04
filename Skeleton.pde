/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Skeleton holds the positions
*  of each of the 15 limbs for a frame
*/

public class Skeleton
{
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
    
    public void Skeleton()
    {
    }
    
    public void setHeadPosition(PVector joint)
    {
      position_SKEL_HEAD= joint;
      
    }
    public void setKneckPosition(PVector joint)
    {
      position_SKEL_NECK= joint;
        
    }
    public void setLeftShoulderPosition(PVector joint)
    {
      position_SKEL_LEFT_SHOULDER= joint;
    }
    public void setLeftElbowPosition(PVector joint)
    {
      position_SKEL_LEFT_ELBOW= joint;
    }
    public void setLeftHandPosition(PVector joint)
    {
      position_SKEL_LEFT_HAND= joint;
    }
    public void setRightShoulderPosition(PVector joint)
    {
      position_SKEL_RIGHT_SHOULDER= joint;
     
    }
    public void setRightElbowPosition(PVector joint)
    {
       position_SKEL_RIGHT_ELBOW= joint;
    }
    public void setTorsoPosition(PVector joint)
    {
       position_SKEL_TORSO= joint;
    }
    public void setLeftHipPosition(PVector joint)
    {
      position_SKEL_LEFT_HIP  = joint;
    }
    public void setLeftKneePosition(PVector joint)
    {
       position_SKEL_LEFT_KNEE= joint;
    }
    public void setRightHipPosition(PVector joint)
    {
        position_SKEL_RIGHT_HIP= joint;
    }
    public void setLeftFootPosition(PVector joint)
    {
       position_SKEL_LEFT_FOOT= joint;
    }
    public void setRightKneePosition(PVector joint)
    {
        position_SKEL_RIGHT_KNEE= joint;
        
    }
    public void setRightFootPosition(PVector joint)
    {
        position_SKEL_RIGHT_FOOT= joint;
    }
    public void setRightHandPosition(PVector joint)
    {
        position_SKEL_RIGHT_HAND = joint;
    }
    
    public PVector getHeadPosition()
    {
      return position_SKEL_HEAD;
      
    }
    public PVector getKneckPosition()
    {
      return position_SKEL_NECK;
        
    }
    public PVector getLeftShoulderPosition()
    {
      return position_SKEL_LEFT_SHOULDER;
    }
    public PVector getLeftElbowPosition()
    {
      return position_SKEL_LEFT_ELBOW;
    }
    public PVector getLeftHandPosition()
    {
      return position_SKEL_LEFT_HAND;
    }
    public PVector getRightShoulderPosition()
    {
      return position_SKEL_RIGHT_SHOULDER;
     
    }
    public PVector getRightElbowPosition()
    {
       return position_SKEL_RIGHT_ELBOW;
    }
    public PVector getTorsoPosition()
    {
       return position_SKEL_TORSO;
    }
    public PVector getLeftHipPosition()
    {
      return position_SKEL_LEFT_HIP;
    }
    public PVector getLeftKneePosition()
    {
       return position_SKEL_LEFT_KNEE;
    }
    public PVector getRightHipPosition()
    {
        return position_SKEL_RIGHT_HIP;
    }
    public PVector getLeftFootPosition()
    {
       return position_SKEL_LEFT_FOOT;
    }
    public PVector getRightKneePosition()
    {
        return position_SKEL_RIGHT_KNEE;
        
    }
    public PVector getRightFootPosition()
    {
        return position_SKEL_RIGHT_FOOT;
    }
    public PVector getRightHandPosition()
    {
        return position_SKEL_RIGHT_HAND;
    }
}
