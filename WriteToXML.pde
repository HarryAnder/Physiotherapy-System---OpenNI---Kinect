
import processing.data.XML;
import java.io.PrintWriter;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  WriteToXML originally used for
*  storing an exercise or recording to XML
*/

class WriteToXML
{

  PrintWriter writeToXml;
  DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
  Date date = new Date();
  Patient patient;
  Exercise exercise;
  
  public void WriteToXml(Patient p)
  {
    patient = p;
  }

  WriteToXML(ArrayList[] joints, int numberOfFrames, Exercise e)
  {
    exercise = e;
    String xmlTitle = exercise.getType() + "/e000001"; 
    //+ " " + format.format(date);
    writeToXml = createWriter(xmlTitle + ".xml");
    XML title = new XML("recording");


    ArrayList<PVector> left_Foot_Frames = new ArrayList();
    left_Foot_Frames = joints[0];

    ArrayList<PVector> left_Knee_Frames = new ArrayList();
    left_Knee_Frames = joints[1];

    ArrayList<PVector> left_Hip_Frames = new ArrayList();
    left_Hip_Frames = joints[2];

    ArrayList<PVector> torso_Frames = new ArrayList();
    torso_Frames = joints[3];

    ArrayList<PVector> left_Shoulder_Frames = new ArrayList();
    left_Shoulder_Frames = joints[4];

    ArrayList<PVector> left_Elbow_Frames = new ArrayList();
    left_Elbow_Frames = joints[5];

    ArrayList<PVector> left_Hand_Frames = new ArrayList();
    left_Hand_Frames = joints[6];

    ArrayList<PVector> kneck_Frames = new ArrayList();
    kneck_Frames = joints[7];

    ArrayList<PVector> head_Frames = new ArrayList();
    head_Frames = joints[8];

    ArrayList<PVector> right_Shoulder_Frames = new ArrayList();
    right_Shoulder_Frames = joints[9];

    ArrayList<PVector> right_Elbow_Frames = new ArrayList();
    right_Elbow_Frames = joints[10];

    ArrayList<PVector> right_Hand_Frames = new ArrayList();
    right_Hand_Frames = joints[11];

    ArrayList<PVector> right_Hip_Frames = new ArrayList();
    right_Hip_Frames = joints[12];

    ArrayList<PVector> right_Knee_Frames = new ArrayList();
    right_Knee_Frames = joints[13];

    ArrayList<PVector> right_Foot_Frames = new ArrayList();
    right_Foot_Frames = joints[14];
    
    XML name_of_exercise = new XML("name_of_exercise");
    name_of_exercise.setContent(exercise.getNameOfExercise());
    
    XML type_of_exercise = new XML("type_of_exercise");
    type_of_exercise.setContent(exercise.getType());
    
    XML time_of_exercise = new XML("time_of_exercise");
    time_of_exercise
    .setContent(String.valueOf(exercise.getTime()));
    
    title.addChild(name_of_exercise);
    title.addChild(type_of_exercise);
    title.addChild(time_of_exercise);


    for (int i = 0; i < numberOfFrames; i++)
    {
      XML frame = new XML("frame");

      XML left_foot = new XML("left_foot");

      XML left_foot_x = new XML("x");
      left_foot_x
      .setContent(String.valueOf(left_Foot_Frames.get(i).x));

      XML left_foot_y = new XML("y");
      left_foot_y
      .setContent(String.valueOf(left_Foot_Frames.get(i).y));

      XML left_foot_z = new XML("z");
      left_foot_z
      .setContent(String.valueOf(left_Foot_Frames.get(i).z));

      left_foot.addChild(left_foot_x);
      left_foot.addChild(left_foot_y);
      left_foot.addChild(left_foot_z);

      frame.addChild(left_foot);

      //-----

      XML left_knee = new XML("left_knee");

      XML left_knee_x = new XML("x");
      left_knee_x
      .setContent(String.valueOf(left_Knee_Frames.get(i).x));

      XML left_knee_y = new XML("y");
      left_knee_y
      .setContent(String.valueOf(left_Knee_Frames.get(i).y));

      XML left_knee_z = new XML("z");
      left_knee_z
      .setContent(String.valueOf(left_Knee_Frames.get(i).z));

      left_knee.addChild(left_knee_x);
      left_knee.addChild(left_knee_y);
      left_knee.addChild(left_knee_z);

      frame.addChild(left_knee);

      //------

      XML left_hip = new XML("left_hip");    
      XML left_hip_x = new XML("x");
      left_hip_x
      .setContent(String.valueOf(left_Hip_Frames.get(i).x));

      XML left_hip_y = new XML("y");
      left_hip_y
      .setContent(String.valueOf(left_Hip_Frames.get(i).y));

      XML left_hip_z = new XML("z");
      left_hip_z
      .setContent(String.valueOf(left_Hip_Frames.get(i).z));

      left_hip.addChild(left_hip_x);
      left_hip.addChild(left_hip_y);
      left_hip.addChild(left_hip_z);

      frame.addChild(left_hip);

      //----


      XML torso = new XML("torso"); 

      XML  torso_x = new XML("x");
      torso_x
      .setContent(String.valueOf(torso_Frames.get(i).x));

      XML torso_y = new XML("y");
      torso_y
      .setContent(String.valueOf(torso_Frames.get(i).y));

      XML torso_z = new XML("z");
      torso_z
      .setContent(String.valueOf(torso_Frames.get(i).z));

      torso.addChild(torso_x);
      torso.addChild(torso_y);
      torso.addChild(torso_z);

      frame.addChild(torso);

      //---

      XML left_shoulder = new XML("left_shoulder");    
      XML left_shoulder_x = new XML("x");
      left_shoulder_x
      .setContent(String.valueOf(left_Shoulder_Frames.get(i).x));

      XML left_shoulder_y = new XML("y");
      left_shoulder_y
      .setContent(String.valueOf(left_Shoulder_Frames.get(i).y));

      XML left_shoulder_z = new XML("z");
      left_shoulder_z
      .setContent(String.valueOf(left_Shoulder_Frames.get(i).z));

      left_shoulder.addChild(left_shoulder_x);
      left_shoulder.addChild(left_shoulder_y);
      left_shoulder.addChild(left_shoulder_z);

      frame.addChild(left_shoulder);

      //---       

      XML left_elbow = new XML("left_elbow");    
      XML left_elbow_x = new XML("x");
      left_elbow_x
      .setContent(String.valueOf(left_Elbow_Frames.get(i).x));

      XML left_elbow_y = new XML("y");
      left_elbow_y
      .setContent(String.valueOf(left_Elbow_Frames.get(i).y));

      XML left_elbow_z = new XML("z");
      left_elbow_z
      .setContent(String.valueOf(left_Elbow_Frames.get(i).z));

      left_elbow.addChild(left_elbow_x);
      left_elbow.addChild(left_elbow_y);
      left_elbow.addChild(left_elbow_z);

      frame.addChild(left_elbow);

      //---

      XML left_hand = new XML("left_hand");    
      XML left_hand_x = new XML("x");
      left_hand_x
      .setContent(String.valueOf(left_Hand_Frames.get(i).x));

      XML left_hand_y = new XML("y");
      left_hand_y
      .setContent(String.valueOf(left_Hand_Frames.get(i).y));

      XML left_hand_z = new XML("z");
      left_hand_z
      .setContent(String.valueOf(left_Hand_Frames.get(i).z));

      left_hand.addChild(left_hand_x);
      left_hand.addChild(left_hand_y);
      left_hand.addChild(left_hand_z);

      frame.addChild(left_hand);

      //--

      XML kneck = new XML("kneck");    
      XML kneck_x = new XML("x");
      kneck_x
      .setContent(String.valueOf(kneck_Frames.get(i).x));

      XML kneck_y = new XML("y");
      kneck_y
      .setContent(String.valueOf(kneck_Frames.get(i).y));

      XML kneck_z = new XML("z");
      kneck_z
      .setContent(String.valueOf(kneck_Frames.get(i).z));

      kneck.addChild(kneck_x);
      kneck.addChild(kneck_y);
      kneck.addChild(kneck_z);

      frame.addChild(kneck);

      //---

      XML head = new XML("head");    
      XML head_x = new XML("x");
      head_x.setContent(String.valueOf(head_Frames.get(i).x));

      XML head_y = new XML("y");
      head_y.setContent(String.valueOf(head_Frames.get(i).y));

      XML head_z = new XML("z");
      head_z.setContent(String.valueOf(head_Frames.get(i).z));

      head.addChild(head_x);
      head.addChild(head_y);
      head.addChild(head_z);

      frame.addChild(head);

      //---

      XML right_shoulder = new XML("right_shoulder");    
      XML right_shoulder_x = new XML("x");
      right_shoulder_x
      .setContent(String.valueOf(right_Shoulder_Frames.get(i).x));

      XML right_shoulder_y = new XML("y");
      right_shoulder_y
      .setContent(String.valueOf(right_Shoulder_Frames.get(i).y));

      XML right_shoulder_z = new XML("z");
      right_shoulder_z
      .setContent(String.valueOf(right_Shoulder_Frames.get(i).z));

      right_shoulder.addChild(right_shoulder_x);
      right_shoulder.addChild(right_shoulder_y);
      right_shoulder.addChild(right_shoulder_z);

      frame.addChild(right_shoulder);

      //---       

      XML right_elbow = new XML("right_elbow");    
      XML right_elbow_x = new XML("x");
      right_elbow_x
      .setContent(String.valueOf(right_Elbow_Frames.get(i).x));

      XML right_elbow_y = new XML("y");
      right_elbow_y
      .setContent(String.valueOf(right_Elbow_Frames.get(i).y));

      XML right_elbow_z = new XML("z");
      right_elbow_z
      .setContent(String.valueOf(right_Elbow_Frames.get(i).z));

      right_elbow.addChild(right_elbow_x);
      right_elbow.addChild(right_elbow_y);
      right_elbow.addChild(right_elbow_z);

      frame.addChild(right_elbow);

      //---

      XML right_hand = new XML("right_hand");    
      XML right_hand_x = new XML("x");
      right_hand_x
      .setContent(String.valueOf(right_Hand_Frames.get(i).x));

      XML right_hand_y = new XML("y");
      right_hand_y
      .setContent(String.valueOf(right_Hand_Frames.get(i).y));

      XML right_hand_z = new XML("z");
      right_hand_z
      .setContent(String.valueOf(right_Hand_Frames.get(i).z));

      right_hand.addChild(right_hand_x);
      right_hand.addChild(right_hand_y);
      right_hand.addChild(right_hand_z);

      frame.addChild(right_hand);

      //------

      XML right_hip = new XML("right_hip");    
      XML right_hip_x = new XML("x");
      right_hip_x
      .setContent(String.valueOf(right_Hip_Frames.get(i).x));

      XML right_hip_y = new XML("y");
      right_hip_y
      .setContent(String.valueOf(right_Hip_Frames.get(i).y));

      XML right_hip_z = new XML("z");
      right_hip_z
      .setContent(String.valueOf(right_Hip_Frames.get(i).z));

      right_hip.addChild(right_hip_x);
      right_hip.addChild(right_hip_y);
      right_hip.addChild(right_hip_z);

      frame.addChild(right_hip);

      //----

      XML right_knee = new XML("right_knee");

      XML right_knee_x = new XML("x");
      right_knee_x
      .setContent(String.valueOf(right_Knee_Frames.get(i).x));

      XML right_knee_y = new XML("y");
      right_knee_y
      .setContent(String.valueOf(right_Knee_Frames.get(i).y));

      XML right_knee_z = new XML("z");
      right_knee_z
      .setContent(String.valueOf(right_Knee_Frames.get(i).z));

      right_knee.addChild(right_knee_x);
      right_knee.addChild(right_knee_y);
      right_knee.addChild(right_knee_z);

      frame.addChild(right_knee);

      //------

      XML right_foot = new XML("right_foot");

      XML right_foot_x = new XML("x");
      right_foot_x
      .setContent(String.valueOf(right_Foot_Frames.get(i).x));

      XML right_foot_y = new XML("y");
      right_foot_y
      .setContent(String.valueOf(right_Foot_Frames.get(i).y));

      XML right_foot_z = new XML("z");
      right_foot_z
      .setContent(String.valueOf(right_Foot_Frames.get(i).z));

      right_foot.addChild(right_foot_x);
      right_foot.addChild(right_foot_y);
      right_foot.addChild(right_foot_z);

      frame.addChild(right_foot);

      title.addChild(frame);
    }

    title.write(writeToXml);
    writeToXml.flush();
    writeToXml.close();
  }
}

