/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Exercise Page Controller
*  Creates, sets and draws Exercise
*  page and sets up the GUI for it,
*  handles all the methods for recording,
*  viewing recording and viewing exercise
*  analyisis
*/

String exerciseType;
Graph graph;
public void createExercisePage()
{
    
  dropdownlist_selectExerciseType = control_tabs
  .addDropdownList("dropdownlist_selectExerciseType")
  .setPosition(375, 195).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false).bringToFront();
  
  dropdownlist_selectExerciseType.captionLabel().set("SELECT EXERCISE TYPE");
  dropdownlist_selectExerciseType.captionLabel().style().marginTop = 3;
  dropdownlist_selectExerciseType.captionLabel().style().marginLeft = 3;
  dropdownlist_selectExerciseType.valueLabel().style().marginTop = 3;
  
  label_selectexercisetype = control_tabs
  .addTextlabel("label_selectexercisetype").setText("Select Exercise Type")
  .setPosition(380, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  button_submitExerciseType = control_tabs
  .addButton("button_submitExerciseType").setPosition(665, 345)
  .setSize(250, 40).setCaptionLabel("NEXT").setVisible(false);
  
   dropdownlist_selectNewExerciseType = control_tabs
  .addDropdownList("dropdownlist_selectNewExerciseType")
  .setPosition(665, 195).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_selectNewExerciseType.captionLabel().set("CHOOSE NEW TYPE");
  dropdownlist_selectNewExerciseType.captionLabel().style().marginTop = 3;
  dropdownlist_selectNewExerciseType.captionLabel().style().marginLeft = 3;
  dropdownlist_selectNewExerciseType.valueLabel().style().marginTop = 3;
  
  label_selectnewexercisetype = control_tabs
  .addTextlabel("label_selectnewexercisetype").setText("Select New Exercise Type")
  .setPosition(670, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  button_submitNewExerciseType = control_tabs
  .addButton("button_submitNewExerciseType").setPosition(675, 193)
  .setSize(200, 40).setCaptionLabel("NEXT").setVisible(false);
 
   dropdownlist_selectNewExercise = control_tabs
  .addDropdownList("dropdownlist_selectNewExercise")
  .setPosition(400, 475).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_selectNewExercise.captionLabel().set("CHOOSE NEW EXERCISE");
  dropdownlist_selectNewExercise.captionLabel().style().marginTop = 3;
  dropdownlist_selectNewExercise.captionLabel().style().marginLeft = 3;
  dropdownlist_selectNewExercise.valueLabel().style().marginTop = 3;
  
  label_selectnewexercise = control_tabs
  .addTextlabel("label_selectnewexercise").setText("Select New Exercise")
  .setPosition(670, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_selectExercise = control_tabs
  .addDropdownList("dropdownlist_selectExercise")
  .setPosition(400, 475).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_selectExercise.captionLabel().set("CHOOSE EXERCISE");
  dropdownlist_selectExercise.captionLabel().style().marginTop = 3;
  dropdownlist_selectExercise.captionLabel().style().marginLeft = 3;
  dropdownlist_selectExercise.valueLabel().style().marginTop = 3;
  
  label_selectexercise = control_tabs
  .addTextlabel("label_selectexercise").setText("Select Exercise")
  .setPosition(670, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  button_submitNewExercise = control_tabs
  .addButton("button_submitNewExercise").setPosition(675, 193)
  .setSize(200, 40).setCaptionLabel("NEXT").setVisible(false);
  
  button_recordExercise = control_tabs
  .addButton("button_recordExercise").setPosition(400, 200)
  .setSize(500, 60).setCaptionLabel("Record exercise").setVisible(false);
  
  button_viewRecordings = control_tabs
  .addButton("button_viewRecordings").setPosition(400, 275)
  .setSize(500, 60).setCaptionLabel("view recordings").setVisible(false);
  
  button_viewAnalysis = control_tabs
  .addButton("button_viewAnalysis").setPosition(400, 350)
  .setSize(500, 60).setCaptionLabel("view analysis").setVisible(false);
  
  dropdownlist_firstRecording = control_tabs
  .addDropdownList("dropdownlist_firstRecording")
  .setPosition(375, 350).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_firstRecording.captionLabel().set("CHOOSE NEW EXERCISE");
  dropdownlist_firstRecording.captionLabel().style().marginTop = 3;
  dropdownlist_firstRecording.captionLabel().style().marginLeft = 3;
  dropdownlist_firstRecording.valueLabel().style().marginTop = 3;
  
  label_firstRecording = control_tabs
  .addTextlabel("label_firstRecording").setText("Select First Recording")
  .setPosition(380, 280).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_videoFormat = control_tabs
  .addDropdownList("dropdownlist_videoFormat")
  .setPosition(375, 200).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_videoFormat.captionLabel().set("SELECT VIDEO FORMAT");
  dropdownlist_videoFormat.captionLabel().style().marginTop = 3;
  dropdownlist_videoFormat.captionLabel().style().marginLeft = 3;
  dropdownlist_videoFormat.valueLabel().style().marginTop = 3;
  dropdownlist_videoFormat.addItem("Skeletal", 0);
  dropdownlist_videoFormat.addItem("Normal", 1);
  
  label_videoFormat = control_tabs
  .addTextlabel("label_videoFormat").setText("Select Video Format")
  .setPosition(380, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_viewType = control_tabs
  .addDropdownList("dropdownlist_viewType")
  .setPosition(650, 200).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_viewType.captionLabel().set("CHOOSE NEW EXERCISE");
  dropdownlist_viewType.captionLabel().style().marginTop = 3;
  dropdownlist_viewType.captionLabel().style().marginLeft = 3;
  dropdownlist_viewType.valueLabel().style().marginTop = 3;
  dropdownlist_viewType.addItem("One Screen", 0);
  dropdownlist_viewType.addItem("Two Screens", 1);
  
  label_viewType = control_tabs
  .addTextlabel("label_viewType").setText("Select View Type")
  .setPosition(655, 130).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_secondRecording = control_tabs
  .addDropdownList("dropdownlist_secondRecording")
  .setPosition(650, 350).setSize(250, 140).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_secondRecording.captionLabel().set("CHOOSE NEW EXERCISE");
  dropdownlist_secondRecording.captionLabel().style().marginTop = 3;
  dropdownlist_secondRecording.captionLabel().style().marginLeft = 3;
  dropdownlist_secondRecording.valueLabel().style().marginTop = 3;
  
  label_secondRecording = control_tabs
  .addTextlabel("label_secondRecording").setText("Select Second Recording")
  .setPosition(655, 280).setColorValue(0xff000000)
  .setVisible(false);
  
  button_submitViewRecording = control_tabs
  .addButton("button_submitViewRecording").setPosition(650, 435)
  .setSize(250, 40).setCaptionLabel("Submit").setVisible(false);
  
  toggle_resistence = control_tabs.addToggle("applyResistence").setPosition(650,200)
  .setSize(250,40).setValue(true).setMode(ControlP5.SWITCH).setVisible(false);
  
  button_resistenceSet = control_tabs
  .addButton("button_resistenceSet").setPosition(650, 285)
  .setSize(250, 40).setCaptionLabel("Record").setVisible(false);
  
  label_setResistence = control_tabs
  .addTextlabel("label_setResistence").setText("Applying Resistence?")
  .setPosition(380, 210).setColorValue(0xff000000)
  .setVisible(false);
  
  label_resistence = control_tabs
  .addTextlabel("label_resistence").setText("Resistence")
  .setPosition(650, 240).setColorValue(0xff000000)
  .setVisible(false);
  
  label_grade = control_tabs
  .addTextlabel("label_grade").setText("Grade: ")
  .setPosition(380, 150).setColorValue(0xff000000)
  .setVisible(false);
  
  label_good = control_tabs
  .addTextlabel("label_good").setText("Total Goods")
  .setPosition(380, 190).setColorValue(0xff000000)
  .setVisible(false);
  
  label_ok = control_tabs
  .addTextlabel("label_ok").setText("Total Oks:")
  .setPosition(380, 230).setColorValue(0xff000000)
  .setVisible(false);
  
  label_bad = control_tabs
  .addTextlabel("label_bad").setText("Total Bads:")
  .setPosition(380, 270).setColorValue(0xff000000)
  .setVisible(false);
  
  label_score = control_tabs
  .addTextlabel("label_score").setText("Score: ")
  .setPosition(380, 310).setColorValue(0xff000000)
  .setVisible(false);
  
  label_2secondsDelayScore = control_tabs
  .addTextlabel("label_2secondsDelayScore").setText("2 seconds delay score")
  .setPosition(380, 350).setColorValue(0xff000000)
  .setVisible(false);
  
  label_5secondsDelayScore = control_tabs
  .addTextlabel("label_5secondsDelayScore").setText("5 seconds delay score")
  .setPosition(380, 390).setColorValue(0xff000000)
  .setVisible(false);
  
  label_overalImprovement = control_tabs
  .addTextlabel("label_overalImprovement").setText("Overall Improvement")
  .setPosition(380, 430).setColorValue(0xff000000)
  .setVisible(false);
  
  label_previousImprove = control_tabs
  .addTextlabel("label_previousImprove").setText("Improved from last week:")
  .setPosition(380, 470).setColorValue(0xff000000)
  .setVisible(false);
  
 
  
  label_exerciseTitle = control_tabs
  .addTextlabel("label_exerciseTitle").setText("Exercise")
  .setPosition(380, 150).setColorValue(0xff000000)
  .setVisible(false);
 
  label_recordingImproved = control_tabs
  .addTextlabel("label_recordingImproved").setText("Improvment: ")
  .setPosition(380, 530).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_selectExerciseType.setTab("Exercise");
  control_tabs.getController("label_selectexercisetype")
  .moveTo("Exercise");
  control_tabs.getController("button_submitExerciseType")
  .moveTo("Exercise");
  dropdownlist_selectNewExerciseType.setTab("Exercise");
  control_tabs.getController("label_selectnewexercisetype")
  .moveTo("Exercise");
  control_tabs.getController("button_submitNewExerciseType")
  .moveTo("Exercise");
  dropdownlist_selectNewExercise.setTab("Exercise");
  control_tabs.getController("label_selectnewexercise")
  .moveTo("Exercise");
  dropdownlist_selectExercise.setTab("Exercise");
  control_tabs.getController("label_selectexercise")
  .moveTo("Exercise");  
  control_tabs.getController("button_submitNewExercise")
  .moveTo("Exercise");
  control_tabs.getController("button_recordExercise")
  .moveTo("Exercise");
  control_tabs.getController("button_viewRecordings")
  .moveTo("Exercise");
  control_tabs.getController("button_viewAnalysis")
  .moveTo("Exercise");
  dropdownlist_firstRecording.setTab("Exercise");
  control_tabs.getController("label_firstRecording")
  .moveTo("Exercise");
  dropdownlist_videoFormat.setTab("Exercise");
  control_tabs.getController("label_videoFormat")
  .moveTo("Exercise");
  dropdownlist_viewType.setTab("Exercise");
  control_tabs.getController("label_viewType")
  .moveTo("Exercise");
  dropdownlist_secondRecording.setTab("Exercise");
  control_tabs.getController("label_secondRecording")
  .moveTo("Exercise");
  control_tabs.getController("button_submitViewRecording")
  .moveTo("Exercise");
  control_tabs.getController("button_resistenceSet").moveTo("Exercise");
  toggle_resistence.setTab("Exercise");
  control_tabs.getController("label_setResistence").moveTo("Exercise");
  control_tabs.getController("label_resistence").moveTo("Exercise");
  control_tabs.getController("label_grade").moveTo("Exercise");
  control_tabs.getController("label_good").moveTo("Exercise");
  control_tabs.getController("label_ok").moveTo("Exercise");
  control_tabs.getController("label_bad").moveTo("Exercise");
  control_tabs.getController("label_score").moveTo("Exercise");
  control_tabs.getController("label_2secondsDelayScore").moveTo("Exercise");
  control_tabs.getController("label_5secondsDelayScore").moveTo("Exercise");
  control_tabs.getController("label_overalImprovement").moveTo("Exercise");
  control_tabs.getController("label_previousImprove").moveTo("Exercise");
  control_tabs.getController("label_recordingImproved").moveTo("Exercise");
  control_tabs.getController("label_exerciseTitle").moveTo("Exercise");
  
}

public void drawExercisePage()
{
   fill(color_mainscreen);
   rect(322, 101, 640, 480);
}

/*
*  when there os a active patient get all the exercise types
*  the patient is enrolled in and store them on a dropdown list
*/
public void patientActive()
{
  dropdownlist_selectExerciseType.setVisible(true);
  button_submitExerciseType.setVisible(true);
  label_selectexercisetype.setVisible(true); 

  dropdownlist_selectExerciseType.addItem("+ ADD  NEW TYPE", 0);
  String patientID = "P" + patient.getId();
  boolean kneck = false, leftArm = false, leftLeg = false, rightArm = false, rightLeg = false;
  int count = 1;
  println("here: " + patientID);
  
  database.query( "SELECT * FROM " + patientID);
      while(database.next())
      {
        if((database.getString("exercise_type").equals("Kneck")) && (!kneck))
        {
          kneck = true;
          dropdownlist_selectExerciseType.addItem("Kneck", count);
          count++;
        }
        if((database.getString("exercise_type").equals("Left Leg")) && (!leftLeg))
        {
          leftLeg = true;
          dropdownlist_selectExerciseType.addItem("Left Leg", count);
          count++;
        }
        if((database.getString("exercise_type").equals("Left Arm")) && (!leftArm))
        {
          leftArm = true;
          dropdownlist_selectExerciseType.addItem("Left Arm", count);
          count++;
        }
        if((database.getString("exercise_type").equals("Right Leg")) && (!rightLeg))
        {
          rightLeg = true;
          dropdownlist_selectExerciseType.addItem("Right Leg", count);
          count++;
        }
        if((database.getString("exercise_type").equals("Right Arm")) && (!rightArm))
        {
          rightArm = true;
          dropdownlist_selectExerciseType.addItem("Right Arm", count);
          count++;
        }
      }
}

/*
*  if + new exercise type is selected get all
*  the exercise types the patient isnt enrolled
*  in and store them on a dropdown list
*/
public void addNewExerciseType()
{
    label_selectexercise.setVisible(false); 
    dropdownlist_selectExercise.setVisible(false);
    label_selectnewexercisetype.setVisible(true); 
    dropdownlist_selectNewExerciseType.setVisible(true);
    
    boolean kneck = false, leftArm = false, leftLeg = false, rightArm = false, rightLeg = false;
    String patientID = "P" + patient.getId();
    database.query( "SELECT * FROM " + patientID);
      
      while(database.next())
      {
        if(database.getString("exercise_type").equals("Kneck"))
        {
          kneck = true;
        }
        if(database.getString("exercise_type").equals("Left Leg"))
        {
          leftLeg = true;
        }
        if(database.getString("exercise_type").equals("Left Arm"))
        {
          leftArm = true;
        }
        if(database.getString("exercise_type").equals("Right Leg"))
        {
          rightLeg = true;
        }
        if(database.getString("exercise_type").equals("Right Arm"))
        {
          rightArm = true;
        }
      }
      int count = 0;
      if(!kneck)
      {
        dropdownlist_selectNewExerciseType.addItem("Kneck", count);
        count++;
      }
      if(!leftLeg)
      {
        dropdownlist_selectNewExerciseType.addItem("Left Leg", count);
        count++;
      }
      if(!rightLeg)
      {
        dropdownlist_selectNewExerciseType.addItem("Right Leg", count);
        count++;
      }
      if(!rightArm)
      {
        dropdownlist_selectNewExerciseType.addItem("Right Arm", count);
        count++;
      }
      if(!leftArm)
      {
        dropdownlist_selectNewExerciseType.addItem("Left Arm", count);
        count++;
      }
}

/*
*  if + new exercise is selected move the
*  dropdown menu into place
*/
public void addNewExercise(int x, int y)
{
    label_selectnewexercisetype.setVisible(false); 
    label_selectnewexercise.setPosition((x + 5), (y - 65)).setVisible(true); 
    dropdownlist_selectNewExercise.setVisible(true);
    dropdownlist_selectNewExercise.setPosition(x, y);
}
/*
*  if + new exercise is selected get all
*  the exercises for the type that the patient 
*  isnt enrolled in and store them on a dropdown list
*/
public void selectNewExercise()
{
    
      String type = "'" + tableName + "'";
    
      changeToDatabaseVersion(); //  changes types into something db understans
    
      println("anything: " + tableName);
      database.query( "SELECT * FROM " + tableName + " WHERE exercise_type = " + type);
      int count = 0;
      while(database.next())
      {
        dropdownlist_selectNewExercise.addItem(String.valueOf(database.getInt("exercise_id")), count);
        count++;
      }
}
/*
*  get the exercises the patient is enrolled
*  in from the selected type
*/
public void getExercisesFromType()
{
      String type = "'" + changeToReadableVersion() + "'";
      ArrayList<Integer> ids = getIdsForType(type);
      println("anything: " + tableName);
      database.query( "SELECT * FROM " + tableName + " WHERE exercise_type = " + type);
      int count = 0;
      while(database.next())
      {
        int id = database.getInt("exercise_id");
        boolean taken = false;
        for(int i = 0; i < ids.size(); i++)
       {
         
         if(id == ids.get(i))
         {
           taken = true;
           println("taken: " + id);
         }
         
       } 
       if(!taken)
       {
          dropdownlist_selectNewExercise.addItem(String.valueOf(id), count);
          count++;
       }
    }
}

/*
*  change exercise type into something the db understands
*/
public void changeToDatabaseVersion()
{
  if(tableName.equals("Kneck"))
    {
      tableName = "kneck_exercises";
    }
    else if(tableName.equals("Left Leg"))
    {
      tableName = "left_leg_exercises" ;
    }
    else if(tableName.equals("Right Leg"))
    {
      tableName = "right_leg_exercises";
    }
    else if(tableName.equals("Right Arm"))
    {
      tableName = "right_arm_exercises";
    }
    else if(tableName.equals("Left Arm"))
    {
      tableName = "left_arm_exercises";
    }
}
/*
*  change exercise type into something the user understands
*/
public String changeToReadableVersion()
{
  String type = "";
  
  if(tableName.equals("kneck_exercises"))
    {
      type = "Kneck";
    }
    else if(tableName.equals("left_leg_exercises"))
    {
      type = "Left Leg" ;
    }
    else if(tableName.equals("right_leg_exercises"))
    {
      type = "Right Leg";
    }
    else if(tableName.equals("right_arm_exercises"))
    {
      type = "Right Arm";
    }
    else if(tableName.equals("left_arm_exercises"))
    {
      type = "Left Arm";
    }
    return type;
}
/*
*  select an exercise
*/
public void selectExercise(int x, int y)
{

    dropdownlist_selectNewExerciseType.setVisible(false);
    label_selectnewexercisetype.setVisible(false); 
    label_selectexercise.setPosition((x + 5), (y - 65)).setVisible(true); 
    dropdownlist_selectExercise.setVisible(true);
    dropdownlist_selectExercise.setPosition(x, y);
    dropdownlist_selectExercise.addItem("+ ADD NEW EXERCISE", 0);
    
    String pId = "P" + patient.getId();
    int numberOfIds = 0;
    ArrayList<Integer> exerciseIds = getIdsForType("'" + tableName + "'");
    int count = 1;
    for(int i = 0; i < exerciseIds.size(); i++)
    {
          dropdownlist_selectExercise.addItem(String.valueOf(exerciseIds.get(i)), count);
          count++;
    }
    changeToDatabaseVersion();
}
/*
*  given the type find all the exercise IDs the patients
*  has recorded.
*/
public ArrayList getIdsForType(String type)
{
  
    String pId = "P" + patient.getId();
    int numberOfIds = 0;
    ArrayList<Integer> exerciseIds = new ArrayList();
  
      database.query( "SELECT * FROM " + pId + " WHERE exercise_type = " + type);
      while(database.next())
      {
        if(numberOfIds == 0)
        {
          int id = database.getInt("exercise_id");
          exerciseIds.add(id);
          numberOfIds++;
        }
        else
        {
          boolean duplicate = false;
          int id = database.getInt("exercise_id");
          for(int i = 0; i < numberOfIds; i++)
          {
            if(id == exerciseIds.get(i))
            {
              duplicate = true;
            }
          }
          if(!duplicate)
          {
            exerciseIds.add(id);
            numberOfIds++;
          }
        }
 
      }
  return exerciseIds;
}
/*
*  download the exercise infomation
*/
public void exerciseSelected()
{
  
    if(exerciseType.equals("+ ADD  NEW TYPE"))
    {
      exerciseType = dropdownlist_selectNewExerciseType.getItem((int) dropdownlist_selectNewExerciseType.getValue()).getName();
      println(exerciseType);
    }
    
    dropdownlist_selectExerciseType.setVisible(false);
    button_submitExerciseType.setVisible(false);
    dropdownlist_selectNewExerciseType.setVisible(false);
    dropdownlist_selectNewExercise.setVisible(false);
    label_selectexercisetype.setVisible(false);
    label_selectnewexercisetype.setVisible(false);
    label_selectnewexercise.setVisible(false);
    dropdownlist_selectExercise.setVisible(false);
    label_selectexercise.setVisible(false);
    
    exercise = new Exercise();
    exercise.setId(Integer.valueOf(exerciseName));
      
      database.query( "SELECT * FROM " + tableName + " WHERE exercise_id = " + exerciseName);
      
      while(database.next())
      {
       exercise.setNameOfExercise(database.getString("exercise_name"));
       exercise.setType(database.getString("exercise_type"));
       exercise.setTime(database.getInt("exercise_time"));
      }
      
      exercise.setPatientId(Integer.valueOf(patient.getId()));

    button_recordExercise.setVisible(true);
    button_viewRecordings.setVisible(true);
    button_viewAnalysis.setVisible(true);
}
/*
*  get the dates for the exercise recordings
*/
public void viewRecordings()
{
  
    button_recordExercise.setVisible(false);
    button_viewRecordings.setVisible(false);
    button_viewAnalysis.setVisible(false);
  
    dropdownlist_firstRecording.setVisible(true);
    label_firstRecording.setVisible(true);
    String patientID = "P" + patient.getId();
    dropdownlist_firstRecording.addItem("Normal Exercise", 0);
    dropdownlist_secondRecording.addItem("Normal Exercise", 0);
    int count = 1;
    database.query( "SELECT * FROM " + patientID + " WHERE exercise_id = " + exercise.getId());
    while(database.next())
    {
      String date = (String.valueOf(database.getDate("date_performed")));
      dropdownlist_firstRecording.addItem(date, count);
      dropdownlist_secondRecording.addItem(date, count);
      count++;
    }

    dropdownlist_videoFormat.setVisible(true);
    label_videoFormat.setVisible(true);
    dropdownlist_viewType.setVisible(true);
    label_viewType.setVisible(true);
    button_submitViewRecording.setVisible(true);
}
/*
*  play the skeleton recording central
*/
public void playSkelSingle()
{
  println("playing from here " + firstRecording);
  player1 = playSkel(firstRecording ,0 , 0);
  playing = true;
}
/*
*  play one skeleton on the left the other on the right
*/
public void playSkelDouble()
{
  
  player1 = playSkel(firstRecording, 322 , 0);
  player2 = playSkel(secondRecording, 0 , 334);
  playingDouble = true;
  println("this far");
  
}
/*
*  create a player which is the date of the exercise selected
*/
public SkeletonPlayer playSkel(String recording, double l, double r)
{
  SkeletonPlayer player = new SkeletonPlayer();
  dropdownlist_firstRecording.setVisible(false);
  label_firstRecording.setVisible(false);
  dropdownlist_videoFormat.setVisible(false);
  label_videoFormat.setVisible(false);
  dropdownlist_viewType.setVisible(false);
  label_viewType.setVisible(false);
  button_submitViewRecording.setVisible(false);
  dropdownlist_secondRecording.setVisible(false);
  label_secondRecording.setVisible(false);
    
  int count = 0, rows = 0 , recordingId = 0;
  int exerciseId = Integer.valueOf(exerciseName);
  String eName = "";
  if(recording.equals("Normal Exercise"))
  {
     eName = "e" + exerciseName;
     println(eName);
    database.query( "SELECT * FROM " + eName + " WHERE exercise_id = " + exerciseId);
    while(database.next())
    {  
     rows++;
    }
   rows--;
  }
  else
  {
    recording = "'"+ recording +"'";  //  the date the recording was performed
    //  find the recording which represents the given exercise ID and date
    database.query( "SELECT * FROM P" + patient.getId() + " WHERE exercise_id = "+ exerciseId +" AND date_performed = " + recording);
    while(database.next())
    {
      recordingId = database.getInt("recording_id");
    }
    eName = "P" + patient.getId() + "_r" + recordingId;  //  create the recpording name example p1_r1

    database.query( "SELECT * FROM " + eName + " WHERE exercise_id = " + exerciseId);  // discover the number of rows
    while(database.next())
    {
      rows++;
    }
   rows--;
  }
 
  while(count < rows)  //  fill SkeletonPlayer with the positions of the limbs
  {
    database.query( "SELECT * FROM " + eName + " WHERE frame_number = " + count);
    while(database.next())
    {
      //  setting the PVectors for every limb for every frame
      player.setHeadPosition((r + database.getDouble("head_x") - l), 
      database.getDouble("head_y"), database.getDouble("head_z"));
      
      player.setKneckPosition((r + database.getDouble("kneck_x") - l), 
      database.getDouble("kneck_y"), database.getDouble("kneck_z"));
      
      player.setLeftShoulderPosition((r + database.getDouble("leftshoulder_x") - l), 
      database.getDouble("leftshoulder_y"), database.getDouble("leftshoulder_z"));
      
      player.setLeftElbowPosition((r + database.getDouble("leftelbow_x") - l), 
      database.getDouble("leftelbow_y"), database.getDouble("leftelbow_z"));
      
      player.setLeftHandPosition((r + database.getDouble("lefthand_x") - l), 
      database.getDouble("lefthand_y"), database.getDouble("lefthand_z"));
      
      player.setRightShoulderPosition((r + database.getDouble("rightshoulder_x") - l), 
      database.getDouble("rightshoulder_y"), database.getDouble("rightshoulder_z"));
      
      player.setRightElbowPosition((r + database.getDouble("rightelbow_x") - l), 
      database.getDouble("rightelbow_y"), database.getDouble("rightelbow_z"));
      
      player.setTorsoPosition((r + database.getDouble("torso_x") - l), 
      database.getDouble("torso_y"), database.getDouble("torso_z"));
      
      player.setLeftHipPosition((r + database.getDouble("lefthip_x") - l), 
      database.getDouble("lefthip_y"), database.getDouble("lefthip_z"));
      
      player.setLeftKneePosition((r + database.getDouble("leftknee_x") - l), 
      database.getDouble("leftknee_y"), database.getDouble("leftknee_z"));
      
      player.setLeftFootPosition((r + database.getDouble("leftfoot_x") - l), 
      database.getDouble("leftfoot_y"), database.getDouble("leftfoot_z"));
      
      player.setRightHipPosition((r + database.getDouble("righthip_x") - l), 
      database.getDouble("righthip_y"), database.getDouble("righthip_z"));
      
      player.setRightKneePosition((r + database.getDouble("rightknee_x") - l), 
      database.getDouble("rightknee_y"), database.getDouble("rightknee_z"));
      
      player.setRightFootPosition((r + database.getDouble("rightfoot_x") - l), 
      database.getDouble("rightfoot_y"), database.getDouble("rightfoot_z"));
      
      player.setRightHandPosition((r + database.getDouble("righthand_x") - l), 
      database.getDouble("righthand_y"), database.getDouble("righthand_z"));
    }
    count++;
    }
   
   return player;
  
}
/*
*  play the skeleton recording
*/
public void play()
{
  if(player1.getCurrentFrame() < player1.getNumberOfFrames())
  { 
   if(!slowDown)
   {
     player1.playSkeleton();  //  draws the skeleton at the current frame
     player1.incrementFrame();
     slowDown = true;
   }
   else
   {
     slowDown = false;
   }
 }
 else
 {
   playing = false;
 }
}
/*
*  play both skeleton recordings
*/
public void playDouble()
{
  if((player1.getCurrentFrame() < player1.getNumberOfFrames()) && (player2.getCurrentFrame() < player2.getNumberOfFrames()))
 {   //  to stop null pointer that occured once
   if(!slowDown)
   {
     player1.playSkeleton();
     player1.incrementFrame();
     player2.playSkeleton();
     player2.incrementFrame();
     slowDown = true;
   }
   else
   {
     slowDown = false;
   }
   
 }
 else
 {
   playingDouble = false;
 }
}

/*
*  play the first frame
*/
public void playFirstFrame()
{
  player1.setColorPlayback();
  player1.playSkeleton();
}

/*
*  play whlist recording
*/
public void playWhileRecording()
{
  
  player1.setColorPlayback();
  if(player1.getCurrentFrame() < player1.getNumberOfFrames())
 { 
     player1.playSkeleton();
     player1.incrementFrame();
     slowDown = true;
 }
 else
 {
   playing = false;
 }
}

public void setResistence()
{
  button_recordExercise.setVisible(false);
  button_viewRecordings.setVisible(false);
  button_viewAnalysis.setVisible(false);
  button_resistenceSet.setVisible(true);
  toggle_resistence.setVisible(true);
  label_setResistence.setVisible(true);
  label_resistence.setVisible(true);
}

public void applyResistence(boolean value) 
{
  if(value == true) 
  {
    resistence = true;
    label_resistence.setText("Resistence");
  } 
  else 
  {
    resistence = false;
    label_resistence.setText("No Resistence");
  }

}
/*
*  when a patient is recording play the normal
*  exercise to the patient to follow
*/
public void patientRecord()
{
    button_resistenceSet.setVisible(false);
    toggle_resistence.setVisible(false);
    label_setResistence.setVisible(false);
    label_resistence.setVisible(false);
    firstRecording = "Normal Exercise";
    playSkelSingle();
    playing = false;
}

/*
*  after completing a recording display analysis
*/
public void displayRecordingAnalysis()
{

  label_grade.setText("Grade:  " + skeletonRecorder.calculateGrade(resistence)).setVisible(true);
  label_good.setText("Total Goods:  (1st half = " + skeletonRecorder.getGoods1st() + ") and (2nd half = " + skeletonRecorder.getGoods2nd() + ")").setVisible(true);
  label_ok.setText("Total Oks:  (1st half = " + skeletonRecorder.getOks1st()+ ") and (2nd half = " + skeletonRecorder.getOks2nd() + ")").setVisible(true);
  label_bad.setText("Total Bads:  (1st half = " + skeletonRecorder.getBads1st()+ ") and (2nd half = " + skeletonRecorder.getBads2nd() + ")").setVisible(true);
  
  int score = skeletonRecorder.calculate1stScore() + skeletonRecorder.calculate2ndScore();
  label_score.setText("Score:  " +  score + " out of " + skeletonRecorder.calculateBestScore()).setVisible(true);

   //  five seconds delay  
  analiseDelay(155);
  label_2secondsDelayScore.setText("2 Seconds Delay Score:  " +  skeletonRecorder.getDelay2Score() + " out of " + (skeletonRecorder.calculateBestScore() - 66)).setVisible(true);
  //  two seconds slow  
  analiseDelay(62);
  label_5secondsDelayScore.setText("5 Seconds Delay Score:  " +  skeletonRecorder.getDelay5Score() + " out of " + (skeletonRecorder.calculateBestScore() -155)).setVisible(true);
  //label_overalImprovement.setText("Overal Improvement:  ").setVisible(true);
  //label_previousImprove.setText("Improved from last week:  ").setVisible(true);
}

/*
*  given the delay time (so many frames in) 
*  compare the recording with the exercise and 
*  work out if the recording gets a better score
*  with the delay
*/
public void analiseDelay(int frames)
{
  int framesDelay = frames;
  int good = 0, ok = 0, bad = 0;
  int feedback;
  int middle = ((player1.getNumberOfFrames() - frames) / 2);
  for(int i = 0; i < (player1.getNumberOfFrames() - frames); i++)
  {
    feedback = an.analiseSkeleton(skeletonRecorder.getSkeleton(framesDelay), i);
    
         switch (feedback)
         {
           case 2 :  good++;
                     break;
           case 1 :  ok++;
                     break;
           default:  bad++;
                     break;
         }
         
        framesDelay++; 
  }
  if((frames/31) <=2 )
 {
   
   skeletonRecorder.setDelay2Goods(good);
   skeletonRecorder.setDelay2Oks(ok);
   skeletonRecorder.setDelay2Bads(bad);
   skeletonRecorder.setDelay2Score((good * 2) + ok);
 }
 else
 {
   skeletonRecorder.setDelay5Goods(good);
   skeletonRecorder.setDelay5Oks(ok);
   skeletonRecorder.setDelay5Bads(bad);
   skeletonRecorder.setDelay5Score((good * 2) + ok);
 }
  println("good = " + good);
  println("ok = " + ok);
  println("bad = " + bad);
  
}

/*
*  not used but would adjust the player of
*  the exercose to match the frame of the 
*  patients skselton
*/
public void adjustSkeletonPlayer()
{
  
    //userSkeleton = skeletonRecorder.getSkeleton();
    playerSkeleton = player1.getSkeleton(1);
    //userSize = new SkeletonSize();
    //userSize.setSkeleton(userSkeleton);
    playerSize = new SkeletonSize();
    playerSize.setSkeleton(playerSkeleton);
   // skeletonDifference = new SkeletonDifference();
    //skeletonDifference.setSkeletonSizes(userSize, playerSize);
    //skeletonAdjuster = new SkeletonAdjuster();
    //skeletonAdjuster.setAdjuster(skeletonDifference, player1);
   // skeletonAdjuster.adjustSkeleton();
    //player1 = skeletonAdjuster.getNewPlayer();///delete if no work
  
}
/*
*  get the grades for the exercise and display them
*  on the graph 
*/
public void viewRecordingAnalysis()
{
  
    button_recordExercise.setVisible(false);
    button_viewRecordings.setVisible(false);
    button_viewAnalysis.setVisible(false);
    label_recordingImproved.setVisible(true);
    label_exerciseTitle.setVisible(true);
    
    graph = new Graph();  //  create a graph
    
    String patientID = "P" + patient.getId();  
    
    int count = 0;
    ArrayList<String> grades = new ArrayList();
    
    int exerciseId = Integer.valueOf(exerciseName); //  exercise name is the ID
    database.query( "SELECT * FROM " + patientID + " WHERE exercise_id = "+ exerciseId);  //  query the exerciseID
      while(database.next())
      {
         grades.add(database.getString("exercise_grade"));  //  for every recording with that ID add the grade to the list
         count++;
         label_exerciseTitle.setText(database.getString("exercise_type") + " : " + database.getString("exercise_name"));
      }
    
    graph.setPosition(372, 201);  //  set postion of the graph
    graph.setPoints(count, grades);  // count being the number of points
    label_recordingImproved.setText("Improving : " + graph.improved());  //  if there is an improvement return Yes
    
    exerciseAnalysis = true;
    
}

public void drawRecordingAnalysis()
{
   fill(255);
   rect(322, 101, 640, 480);
   graph.drawGraph();
   
}

public void closeExercisePage()
{
  
  dropdownlist_selectExerciseType.clear().setVisible(false);
  label_selectexercisetype.setVisible(false);
  button_submitExerciseType.setVisible(false);
  dropdownlist_selectNewExerciseType.clear().setVisible(false);
  label_selectnewexercisetype.setVisible(false);
  button_submitNewExerciseType.setVisible(false);
  dropdownlist_selectNewExercise.clear().setVisible(false);
  label_selectnewexercise.setVisible(false);
  dropdownlist_selectExercise.clear().setVisible(false);
  label_selectexercise.setVisible(false);
  button_submitNewExercise.setVisible(false);
  button_recordExercise.setVisible(false);
  button_viewRecordings.setVisible(false);
  button_viewAnalysis.setVisible(false);
  dropdownlist_firstRecording.clear().setVisible(false);
  label_firstRecording.setVisible(false);
  dropdownlist_videoFormat.clear().setVisible(false);
  label_videoFormat.setVisible(false);
  label_viewType.setVisible(false);
  dropdownlist_secondRecording.clear().setVisible(false);
  label_secondRecording.setVisible(false);
  button_submitViewRecording.setVisible(false);
  button_resistenceSet.setVisible(false);
  toggle_resistence.setVisible(false);
  label_setResistence.setVisible(false);
  label_resistence.setVisible(false);
  label_grade.setVisible(false);
  label_good.setVisible(false);
  label_ok.setVisible(false);
  label_bad.setVisible(false); 
  label_score.setVisible(false);
  label_2secondsDelayScore.setVisible(false);
  label_5secondsDelayScore.setVisible(false);
  label_overalImprovement.setVisible(false);
  label_previousImprove.setVisible(false);
  label_recordingImproved.setVisible(false);
  label_exerciseTitle.setVisible(false);
  exerciseAnalysis = false;
}

