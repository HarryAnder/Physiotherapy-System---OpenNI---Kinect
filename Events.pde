/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Event handler
*  THIS PAGE HOLDS ALL THE EVENTS FOR EVERY BUTTON AND CONTROL
*/
String tableName = "", exerciseName = "", firstRecording = "", secondRecording = "";

/*
*  all events
*/

public void controlEvent(ControlEvent controlevent)
{
  if(controlevent.isGroup())
    {  //  IF controlevent IS A GROUP IT COULD BE A DropdownList
    
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_limbs"))
      {  //  IF THE NAME OF THE GROUP IS dropdownlist_limbs THEN
         //  
      newExerciseType = dropdownlist_limbs
      .getItem((int) controlevent.getGroup().getValue())
      .getName();
      setChooseExercise();
      }
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_selectExerciseType"))
      {  //  IF THE NAME OF THE GROUP IS dropdownlist_limbs THEN
         // 
      dropdownlist_selectNewExerciseType.clear().captionLabel().set("CHOOSE NEW TYPE");
      dropdownlist_selectNewExercise.clear().captionLabel().set("CHOOSE NEW EXERCISE");
      dropdownlist_selectExercise.clear().captionLabel().set("CHOOSE EXERCISE");
      exerciseType = dropdownlist_selectExerciseType
      .getItem((int) controlevent.getGroup().getValue())
      .getName();
      println(exerciseType);
        if(exerciseType.equals("+ ADD  NEW TYPE"))
        {
            addNewExercise(375, 385);
            addNewExerciseType();
            
        }
        else
        {
          tableName = exerciseType;
          selectExercise(665, 195);
        }
      }
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_selectNewExerciseType"))
      {  //  IF THE NAME OF THE GROUP IS dropdownlist_limbs THEN
         // 
       dropdownlist_selectNewExercise.clear().captionLabel().set("CHOOSE NEW EXERCISE");
      tableName = dropdownlist_selectNewExerciseType
      .getItem((int) controlevent.getGroup().getValue())
      .getName();
      println(tableName);
       selectNewExercise();
       
      }
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_selectNewExercise"))
      {  //  IF THE NAME OF THE GROUP IS dropdownlist_limbs THEN
         // 
       
      exerciseName = dropdownlist_selectNewExercise
      .getItem((int) controlevent.getGroup().getValue())
      .getName();
      println(exerciseName);
      
      }
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_selectExercise"))
      {  //  IF THE NAME OF THE GROUP IS dropdownlist_limbs THEN
         // 
       dropdownlist_selectNewExercise.clear().captionLabel().set("CHOOSE NEW EXERCISE");
      exerciseName = dropdownlist_selectExercise
      .getItem((int) controlevent.getGroup().getValue())
      .getName();
      println(exerciseName);
      if(exerciseName.equals("+ ADD NEW EXERCISE"))
      {
        addNewExercise(375, 385);
        getExercisesFromType();
      }
      else
      {
        dropdownlist_selectNewExercise.setVisible(false);
        label_selectnewexercise.setVisible(false);
      }
 
      }
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_firstRecording"))
      {
        firstRecording = dropdownlist_firstRecording.getItem((int) controlevent.getGroup().getValue())
      .getName();
      println("1st recording: " + firstRecording);
      
      }
      
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_secondRecording"))
      {
        secondRecording = dropdownlist_secondRecording.getItem((int) controlevent.getGroup().getValue())
      .getName();
      println("2nd recording: " + secondRecording);
      
      }
      
      if(controlevent.getGroup().getName()
      .equals("dropdownlist_viewType"))
      {
        if(dropdownlist_viewType.getItem((int) controlevent.getGroup().getValue())
      .getName().equals("Two Screens"))
      {
        label_secondRecording.setVisible(true);
        dropdownlist_secondRecording.setVisible(true);
      }
      else
      {
        label_secondRecording.setVisible(false);
        dropdownlist_secondRecording.setVisible(false);
      }
      }
      
      
    }
  else if(controlevent.isTab())
  {
    
    if(controlevent.getTab().getId() == 1)
    {
      reset();
      title = "LOGIN";
      tab = 1;
    }
    else if(controlevent.getTab().getId() == 2)
    {
      reset();
      title = "PATIENT";
      tab = 2;
    }
    else if(controlevent.getTab().getId() == 3)
    {
      reset();
      title = "EXERCISE";
      if(activePatient)
      {
        patientActive();
        title = patient.getFirstName() + " " + patient.getSurname();
        
      }
      tab = 3;
    }
    else if(controlevent.getTab().getId() == 4)
    {
      reset();
      title = "GAMES";
      tab = 4;
    }
    else
    {
      reset();
      title = "DEVELOPMENT";
      tab = 5;
    }
    label_title.setText(title);
 
  }
  else
  {
    reset();
    if(controlevent.getController().getName()
    .equals("button_login"))
    {
      login();  //  found on LogginGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_enterpatient"))
    {
      enterPatient();  //  found on PatientGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_createexercise"))
    {
      createExercise();   //  found on DevelopmentGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_submitexercise"))
    {
      newExerciseName = textfield_exercisename.getText();
      exercise.setType(newExerciseType);
      exercise.setNameOfExercise(newExerciseName);
      exercise.setTime((int) slider_exercisetime.getValue());
      exercise.setPatientId(Integer.valueOf(patient.getId()));
      println(exercise.getType() +", "+ 
      exercise.getNameOfExercise()+ ", " + exercise.getTime());
      recordNewExercise();   //  found on DevelopmentGUI
      time =  Integer.valueOf(exercise.getTime());
      
    }
     else if(controlevent.getController().getName()
    .equals("button_editexercise"))
    {
      editExercise();    //  found on ExerciseGUI
      
    }
    
    else if(controlevent.getController().getName()
    .equals("button_record"))
    {
      println("testing record");
      title = "BEGIN CALIBRATION";
      label_title.setText(title);
      preTime = 5;
      println("start " +preTime);
      setupRecorder();     //  found on Recorder
      newExerciseSelected = true;
      cameraOn = true;
      
      
    }
    else if(controlevent.getController().getName()
    .equals("button_stop"))
    {
      
      title = "EXERCISE SAVED";
      label_title.setText(title);
      endRecording();    //  found on Recorder
      cameraOn = false;
    }
    else if(controlevent.getController().getName()
    .equals("button_deleteexercise"))
    {
      
      
    }
    else if(controlevent.getController().getName()
    .equals("button_editthisexercise"))
    {
      editThisExercise();  //  found on ExerciseGUI
      
    }
    else if(controlevent.getController().getName()
    .equals("button_registerpatient"))
    {
      registerPatient();  //  found on PatientGUI
      
    }
    
    else if(controlevent.getController().getName()
    .equals("button_register"))
    {
      uploadPatient();  //  found on PatientGUI
      
    }
    
    else if(controlevent.getController().getName()
    .equals("button_submitExerciseType"))
    {
    
      exerciseSelected();  //  found on ExerciseGUI
      
    }
    else if(controlevent.getController().getName()
    .equals("button_submitNewExerciseType"))
    {
 
    }
    else if(controlevent.getController().getName()
    .equals("button_submitNewExercise"))
    {
      
      
    }
    else if(controlevent.getController().getName()
    .equals("button_viewRecordings"))
    {
      viewRecordings();  //  found on ExerciseGUI
      
    }
    else if(controlevent.getController().getName()
    .equals("button_submitViewRecording"))
    {
      if(!dropdownlist_secondRecording.isVisible())
      {
        playSkelSingle();  //  found on ExerciseGUI
      }
      else
      {
        playSkelDouble();  //  found on ExerciseGUI
      }
      
    }
    else if(controlevent.getController().getName()
    .equals("button_recordExercise"))
    {
      setResistence();  //  found on ExerciseGUI
      
    }
    else if(controlevent.getController().getName()
    .equals("button_resistenceSet"))
    {
      patientRecord();  //  found on ExerciseGUI
      time =  exercise.getTime();
      title = "BEGIN CALIBRATION";
      label_title.setText(title);
      preTime = 5;
      println("start " +preTime);
      setupRecorder();  //  found on Recorer
      newExerciseSelected = true;
      cameraOn = true;
    }
    else if(controlevent.getController().getName()
    .equals("button_viewAnalysis"))
    {
      viewRecordingAnalysis();  //  found on ExerciseGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_close"))
    {
      activePatient = false;
      resetPatientPage();  //  found on PatientGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_statistics"))
    {
      viewStatistics(); //  found on PatientGUI
    }
    else if(controlevent.getController().getName()
    .equals("button_back"))
    {
      if(help)
      {
        help = false;
      }
      else
      {
        help = true;
      }
       label_help.setVisible(help);
       textarea_help.setVisible(help);
    }

  }
}

