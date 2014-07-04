import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  WriteExerciseToDB writes an exercise
*  or a recording to the the database
*/

class WriteExerciseToDB
{
  
  Exercise exercise;
  RecordingAnalysis analysis;
  String[] names = new String[50];
  Object[] objects = new Object[50];
  
  
  WriteExerciseToDB(ArrayList[] joints, int numberOfFrames, Exercise e, RecordingAnalysis a)
  {
    exercise = e;
    analysis = a;
    
    //  create an array of names to pass to the database
    names[0] = "frame_number";
    names[1] = "exercise_id";
    names[2] = "patient_id";
    names[3] = "exercise_time"; 
    names[4] = "exercise_name";
    names[5] = "leftfoot_x";
    names[6] = "leftfoot_y";
    names[7] = "leftfoot_z";
    names[8] = "leftknee_x";
    names[9] = "leftknee_y";
    names[10] = "leftknee_z";
    names[11] = "lefthip_x";
    names[12] = "lefthip_y";
    names[13] = "lefthip_z";
    names[14] = "torso_x";
    names[15] = "torso_y";
    names[16] = "torso_z";
    names[17] = "leftshoulder_x";
    names[18] = "leftshoulder_y";
    names[19] = "leftshoulder_z";
    names[20] = "leftelbow_x";
    names[21] = "leftelbow_y";
    names[22] = "leftelbow_z";
    names[23] = "lefthand_x";
    names[24] = "lefthand_y";
    names[25] = "lefthand_z";
    names[26] = "kneck_x";
    names[27] = "kneck_y";
    names[28] = "kneck_z";
    names[29] = "head_x";
    names[30] = "head_y";
    names[31] = "head_z";
    names[32] = "rightshoulder_x";
    names[33] = "rightshoulder_y";
    names[34] = "rightshoulder_z";
    names[35] = "rightelbow_x";
    names[36] = "rightelbow_y";
    names[37] = "rightelbow_z";
    names[38] = "righthand_x";
    names[39] = "righthand_y";
    names[40] = "righthand_z";
    names[41] = "righthip_x";
    names[42] = "righthip_y";
    names[43] = "righthip_z";
    names[44] = "rightknee_x";
    names[45] = "rightknee_y";
    names[46] = "rightknee_z";
    names[47] = "rightfoot_x";
    names[48] = "rightfoot_y";
    names[49] = "rightfoot_z";

    
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
    
    String tableName;
    
    if(exercise.getId() == 0)
    {
      int count = 0;
      database.query( "SELECT * FROM exercises");
      while(database.next())
      {
        count = database.getInt("exercise_id");
      }
      count++;
      
      DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date date = new Date();
  
      String[] exerciseNames = new String[5];
      exerciseNames[0] = "exercise_id";
      exerciseNames[1] = "exercise_type";
      exerciseNames[2] = "exercise_name";
      exerciseNames[3] = "exercise_time";
      exerciseNames[4] = "date_performed";
      
      Object[] exerciseObjects = new Object[5];
      exerciseObjects[0] = count;
      exerciseObjects[1] = exercise.getType();
      exerciseObjects[2] = exercise.getNameOfExercise();
      exerciseObjects[3] = exercise.getTime();
      exerciseObjects[4] = format.format(date);
      
      exercise.setId(count);
      
      database.insertUpdateInDatabase("exercises", exerciseNames, exerciseObjects);
      
      if(exercise.getType().equals("Kneck"))
      {
        database.insertUpdateInDatabase("kneck_exercises", exerciseNames, exerciseObjects);
      }
      else if(exercise.getType().equals("Left Leg"))
      {
        database.insertUpdateInDatabase("left_leg_exercises", exerciseNames, exerciseObjects);
      }
      else if(exercise.getType().equals("Left Arm"))
      {
        database.insertUpdateInDatabase("left_arm_exercises", exerciseNames, exerciseObjects);
      }
      else if(exercise.getType().equals("Right Leg"))
      {
        database.insertUpdateInDatabase("right_leg_exercises", exerciseNames, exerciseObjects);
      }
      else
      {
        database.insertUpdateInDatabase("right_arm_exercises", exerciseNames, exerciseObjects);
      }
      
      tableName = "`e"+ count +"`";
      
    }
    else
    {
      //  the patients list of recordings table
      String patientId = "P" + exercise.getPatientId();
      int count = 0;
      database.query( "SELECT * FROM " + patientId);  //  view all recordings  
      while(database.next())
      {
        count = database.getInt("recording_id");  //  count becomes the last id
      }
      count++;  //  add one to the id to make a new id
      
      DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date date = new Date();
      //  names for the patient list of recordings table
      String[] exerciseNames = new String[15];
      exerciseNames[0] = "recording_id";
      exerciseNames[1] = "exercise_id";
      exerciseNames[2] = "exercise_name";
      exerciseNames[3] = "exercise_type";
      exerciseNames[4] = "exercise_time";
      exerciseNames[5] = "date_performed";
      exerciseNames[6] = "exercise_grade";
      exerciseNames[7] = "resistence";
      exerciseNames[8] = "score";
      exerciseNames[9] = "good_1st";
      exerciseNames[10] = "good_2nd";
      exerciseNames[11] = "ok_1st";
      exerciseNames[12] = "ok_2nd";
      exerciseNames[13] = "bad_1st";
      exerciseNames[14] = "bad_2nd";
      
      //  add the objects for each column of the patients list
      Object[] exerciseObjects = new Object[15];
      exerciseObjects[0] = count;
      exerciseObjects[1] = exercise.getId();
      exerciseObjects[2] = exercise.getNameOfExercise();
      exerciseObjects[3] = exercise.getType();
      exerciseObjects[4] = exercise.getTime();
      exerciseObjects[5] = format.format(date);
      exerciseObjects[6] = analysis.getExerciseGrade();
      exerciseObjects[7] = analysis.getResistence();
      exerciseObjects[8] = analysis.getScore();
      exerciseObjects[9] = analysis.getGood1st();
      exerciseObjects[10] = analysis.getGood2nd();
      exerciseObjects[11] = analysis.getOk1st();
      exerciseObjects[12] = analysis.getOk2nd();
      exerciseObjects[13] = analysis.getBad1st();
      exerciseObjects[14] = analysis.getBad2nd();
      
      //  add the names and objects to the table P1 for example
      database.insertUpdateInDatabase(patientId, exerciseNames, exerciseObjects);
      
      //  create table name for new recording P1_r1
      tableName = "`" + patientId + "_r" + count +"`";
    }
    
    //  create new table here 
    database.execute("CREATE TABLE `Physiotherapy`." + tableName + " (`frame_number` INT NOT NULL,`exercise_id` INT NULL,`patient_id` INT NULL,`exercise_time` DOUBLE NULL, `exercise_name` VARCHAR(45) NULL,`leftfoot_x` DOUBLE NULL,`leftfoot_y` DOUBLE NULL,`leftfoot_z` DOUBLE NULL,`leftknee_x` DOUBLE NULL,`leftknee_y` DOUBLE NULL,`leftknee_z` DOUBLE NULL,`lefthip_x` DOUBLE NULL,`lefthip_y` DOUBLE NULL,`lefthip_z` DOUBLE NULL,`torso_x` DOUBLE NULL,`torso_y` DOUBLE NULL, `torso_z` DOUBLE NULL,`leftshoulder_x` DOUBLE NULL,`leftshoulder_y` DOUBLE NULL,`leftshoulder_z` DOUBLE NULL,`leftelbow_x` DOUBLE NULL,`leftelbow_y` DOUBLE NULL,`leftelbow_z` DOUBLE NULL,`lefthand_x` DOUBLE NULL,`lefthand_y` DOUBLE NULL,`lefthand_z` DOUBLE NULL,`kneck_x` DOUBLE NULL,`kneck_y` DOUBLE NULL,`kneck_z` DOUBLE NULL,`head_x` DOUBLE NULL,`head_y` DOUBLE NULL,`head_z` DOUBLE NULL,`rightshoulder_x` DOUBLE NULL,`rightshoulder_y` DOUBLE NULL,`rightshoulder_z` DOUBLE NULL,`rightelbow_x` DOUBLE NULL,`rightelbow_y` DOUBLE NULL,`rightelbow_z` DOUBLE NULL,`righthand_x` DOUBLE NULL,`righthand_y` DOUBLE NULL,`righthand_z` DOUBLE NULL,`righthip_x` DOUBLE NULL,`righthip_y` DOUBLE NULL,`righthip_z` DOUBLE NULL,`rightknee_x` DOUBLE NULL,`rightknee_y` DOUBLE NULL,`rightknee_z` DOUBLE NULL,`rightfoot_x` DOUBLE NULL,`rightfoot_y` DOUBLE NULL,`rightfoot_z` DOUBLE NULL, PRIMARY KEY (`frame_number`));");

    //  get objects to add to this new table P1_r1 and add all rows which are all frames 
    for(int i =0; i < numberOfFrames; i++)
    {
      objects[0] = i;
      objects[1] = exercise.getId();
      objects[2] = exercise.getPatientId();
      objects[3] = exercise.getTime();
      objects[4] = exercise.getNameOfExercise();
      objects[5] = left_Foot_Frames.get(i).x;
      objects[6] = left_Foot_Frames.get(i).y;
      objects[7] = left_Foot_Frames.get(i).z;
      objects[8] = left_Knee_Frames.get(i).x;
      objects[9] = left_Knee_Frames.get(i).y;
      objects[10] = left_Knee_Frames.get(i).z;
      objects[11] = left_Hip_Frames.get(i).x;
      objects[12] = left_Hip_Frames.get(i).y;
      objects[13] = left_Hip_Frames.get(i).z;
      objects[14] = torso_Frames.get(i).x;
      objects[15] = torso_Frames.get(i).y;
      objects[16] = torso_Frames.get(i).z;
      objects[17] = left_Shoulder_Frames.get(i).x;
      objects[18] = left_Shoulder_Frames.get(i).y;
      objects[19] = left_Shoulder_Frames.get(i).z;
      objects[20] = left_Elbow_Frames.get(i).x;
      objects[21] = left_Elbow_Frames.get(i).y;
      objects[22] = left_Elbow_Frames.get(i).z;
      objects[23] = left_Hand_Frames.get(i).x;
      objects[24] = left_Hand_Frames.get(i).y;
      objects[25] = left_Hand_Frames.get(i).z;
      objects[26] = kneck_Frames.get(i).x;
      objects[27] = kneck_Frames.get(i).y;
      objects[28] = kneck_Frames.get(i).z;
      objects[29] = head_Frames.get(i).x;
      objects[30] = head_Frames.get(i).y;
      objects[31] = head_Frames.get(i).z;
      objects[32] = right_Shoulder_Frames.get(i).x;
      objects[33] = right_Shoulder_Frames.get(i).y;
      objects[34] = right_Shoulder_Frames.get(i).z;
      objects[35] = right_Elbow_Frames.get(i).x;
      objects[36] = right_Elbow_Frames.get(i).y;
      objects[37] = right_Elbow_Frames.get(i).z;
      objects[38] = right_Hand_Frames.get(i).x;
      objects[39] = right_Hand_Frames.get(i).y;
      objects[40] = right_Hand_Frames.get(i).z;
      objects[41] = right_Hip_Frames.get(i).x;
      objects[42] = right_Hip_Frames.get(i).y;
      objects[43] = right_Hip_Frames.get(i).z;
      objects[44] = right_Knee_Frames.get(i).x;
      objects[45] = right_Knee_Frames.get(i).y;
      objects[46] = right_Knee_Frames.get(i).z;
      objects[47] = right_Foot_Frames.get(i).x;
      objects[48] = right_Foot_Frames.get(i).y;
      objects[49] = right_Foot_Frames.get(i).z;
      
      //  insert the row
      database.insertUpdateInDatabase(tableName, names, objects);
    }

  }
  
  public int getId()
  {
    return exercise.getId();
  }
}
