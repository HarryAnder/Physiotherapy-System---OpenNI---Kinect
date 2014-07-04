import controlP5.*;

/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  GUI Controller
*  THIS PAGE HOLDS ALL THE ControlP5 INITIALISERS AND CREATES THE
*  THE GUI FOR THE TABS and global elements
*/

ControlP5 control_tabs, control;

PFont font = createFont("Arial", 20, true);
ControlFont controlfont;
Textlabel label_title, label_username, label_password, 
label_loggedin, label_enterpatientid, label_firstname,
label_surname, label_dob, label_ailment, label_notes,
label_register, label_displayid, label_displaydob,
label_displayailment, label_displaynotes,
label_exercisename,label_exerciselimbs, 
label_createexercise, label_settime, label_chooseexercise,
label_firstRecording, label_videoFormat, label_viewType,
label_secondRecording, label_selectexercisetype, label_selectnewexercisetype,
label_selectnewexercise, label_selectexercise, label_setResistence, label_resistence,
label_grade, label_good, label_ok, label_bad, label_score, label_5secondsDelayScore, 
label_2secondsDelayScore, label_overalImprovement, label_previousImprove, label_exerciseTitle,
label_recordingImproved, label_statistics, label_statisticsImproved, label_errorMessage,
label_exerciseId, label_help;

Textfield textfield_username, textfield_password,
textfield_firstname, textfield_surname, textfield_dob,
textfield_ailment, textfield_notes,
textfield_enterpatientid, textfield_exercisename;

Button button_back, button_record, button_stop,
button_login, button_enterpatient, button_registerpatient,
button_createexercise, button_editexercise, button_submitexercise, button_editthisexercise,
button_deleteexercise, button_register, button_submitExerciseType,
button_submitNewExerciseType, button_submitNewExercise,
button_recordExercise, button_viewRecordings, button_viewAnalysis,
button_submitViewRecording, button_resistenceSet, button_range, button_close, button_statistics; 
boolean page_login_no = true, page_login_yes = false;
DropdownList dropdownlist_limbs, dropdownlist_chooseexercise, 
dropdownlist_selectExerciseType, 
dropdownlist_selectNewExerciseType,
dropdownlist_selectNewExercise,
dropdownlist_selectExercise,
dropdownlist_firstRecording,
dropdownlist_videoFormat,
dropdownlist_viewType,
dropdownlist_secondRecording;
String newExerciseType, newExerciseName;
Slider slider_exercisetime;
ControlTimer controltimer_exercisetimer;
Toggle toggle_resistence;

Textarea textarea_help;

/*
*  crate global gui 
*/
public void createGUI()
{  //  CREATES THE TABS AND BASE GUI
  
  createTabs();  //  LOCATED ON THIS PAGE CREATES & SETS THE TABS
  
  //  CREATE & SET THE MAIN TITLE
  label_title = control.addTextlabel("label_title").setText(title)
  .setPosition(330, 50).setColorValue(0xffffffff)
  .setFont(createFont("Arial", 50));
  
  //  CREATE GLOBAL BUTTON button_back
  button_back = control_tabs.addButton("button_back")
  .setPosition(10, 585)
  .setSize(200, 40).setCaptionLabel("HELP");
  //  SET button_back AS A GLOBAL CONTROL
  control_tabs.getController("button_back")
  .moveTo("global");
  
  //  HELP LABEL
  label_help = control_tabs.addTextlabel("label_help")
  .setPosition(1100, 120)
  .setSize(200, 40).setText("HELP").setVisible(false);
  //  SET button_back AS A GLOBAL CONTROL
  control_tabs.getController("label_help")
  .moveTo("global");
  
  //SET GLOBAL HELP TEXTAREA
  textarea_help = control_tabs.addTextarea("textarea_help").setPosition(970, 155)
  .setSize(320, 420).setFont(createFont("arial",14))
  .setLineHeight(14).setColor(color(0)).setColorBackground(color(200)).setVisible(false);
  textarea_help.setTab("global");

  createLoginPage();  //  CREATE GUI FOR LOGIN FOUND ON LoginGUI
}

/*
*  create the tabs
*/
public void createTabs()
{  //  CREATES & SETS TABS
  
  controlfont = new ControlFont(font, 20);
  control_tabs.setFont(controlfont);
  
  //  CREATE TABS
  
  control_tabs.addTab("Patient")
  .setColorBackground(color(0, 160, 100))
  .setColorLabel(color(255)).setColorActive(color(255, 128, 0))
  .setWidth(260).setHeight(40);
  
  control_tabs.addTab("Exercise")
  .setColorBackground(color(0, 160, 100))
  .setColorLabel(color(255)).setColorActive(color(255, 128, 0))
  .setWidth(260).setHeight(40);
  
  control_tabs.addTab("Games")
  .setColorBackground(color(0, 160, 100))
  .setColorLabel(color(255)).setColorActive(color(255, 128, 0))
  .setWidth(260).setHeight(40);
  
  control_tabs.addTab("Development")
  .setColorBackground(color(0, 160, 100))
  .setColorLabel(color(255)).setColorActive(color(255, 128, 0))
  .setWidth(260).setHeight(40);
  
  //  CREATE DEFAULT TAB
  
  control_tabs.getTab("default").setLabel("Logout")
  .setId(1).setWidth(260).setHeight(40).activateEvent(true)
  .setColorBackground(color(0, 160, 100))
  .setColorLabel(color(255)).setColorActive(color(255, 128, 0));
  
  //  SET IDS OF TABS
  
  control_tabs.getTab("Patient").setId(2).activateEvent(true);
  control_tabs.getTab("Exercise").setId(3).activateEvent(true);
  control_tabs.getTab("Games").setId(4).activateEvent(true);
  control_tabs.getTab("Development").setId(5).activateEvent(true);
  controltimer_exercisetimer = new ControlTimer();
  controltimer_exercisetimer.setSpeedOfTime(1);
}

public void reset()
{
  //dropdownlist_limbs.setVisible(false);
}

/*
*  when on loggin page the help should display this
*/
public void setHelpLoggin()
{
  textarea_help.setText("\nYou do not need to log in as the application is not completely up"
  + " and running, so you may tour the application.\n\nTo view or register patients "
  + " select Patient.\n\nTo create exercises select Development.\n\nTo record"
  + " exercises for patients you must first find a patient on the Patient page then"
  + " select Exercise for recording patients perform exercises or to view the past"
  + " recordings or analysis.\n\nThe Game section was not completed in time to be featured.");
}
/*
*  when on patient page the help should display this
*/
public void setHelpPatient()
{
  textarea_help.setText("\nFirstly either find a patient or register a new patient.\n\n"
  + "To find a patient you must enter their ID which is just the number given after registration. "
  + "An example is the ID 1, just the number though.\n\n"
  + "To register a patient select register and fill out all the fields you are presented with "
  + "even the notes field even if it means entering 'none'. Once completed you will be presented"
  + " with the Patient ID which will be used to find patients in the future.\n\n"
  + "On the Patient page you can also viw the patients statistics, found by the help button, this"
  + " displays a graph showing how the patient has improved over the past recordings.\n\n"
  + "Also located next to the help button is a close button this closes the patients details.\n\n"
  + "Lastly the range of motion button was not finished in time so is not featured.\n\nTo record"
  + " exercises for patients you must first find a patient on the Patient page then"
  + " select Exercise for recording patients perform exercises or to view the past"
  + " recordings or analysis.");
}
/*
*  when on exercise page the help should display this
*/
public void setHelpExercise()
{
  textarea_help.setText("\nFirstly if you see nothing then you still need to go to the Patient "
  + "page and find or register a patient. You can't record or view recordings without doing this.\n\n"
  + "Once a patient is found you can see the exercise types they are enrolled in on the first drop down "
  + "list. If you have just registered the patient or want to add a new exercise type select + NEW EXERCISE TYPE."
  + " Now a new drop down list will appear choose the new exercise type here. Lastly you must select the exercise "
  + "or if you have just selected a new exercise type you will need to add a new exercise."
  + " Sorry the exercises are displayed by ID not name this was not finished in time to have the exercise name.\n\n"
  + "The next option is whether to record the selected exercise, to view the past recordings or view the analysis.\n\n"
  + "Recording an exercise will give you the option to apply resistence or not. by selecting that you are going to "
  + "apply resistence means that the recording could achieve a higer grade, this also means applying resistence to the"
  + " patients limb while they perform the exercise, MAKE SURE THE KINECT IS CONNECTED BEFORE PROCEEDING. Next the Kinect will turn on "
  + " and the patient needs to perform calibration this is the 'stick em up pose' tell the patient to stand straight about "
  + " 2.5 metres away from the kinect and stick their hands in the air so that their upper arms are paralell with their "
  + "shoulders but the lower arms are creating a 90 degree angle up towards the ceiling. the recording should start "
  + "when calibrated, the patient GREEN skeleton should follow the BLUE skeleton creating the same angles.\n\n"
  + "Viewing Recordings will ask you to select whether its skeletal or normal, ignore this normal videos are not featured."
  + " select whether you want to view one video on its own or two side by side. then select the recording dates. "
  + "if two recordings were made on the same day you can only view the latest for that day the time was not featured.\n\n"
  + "Lastly viewing a exercise analysis displays a graph of improvement.");
}
/*
*  when on game page the help should display this
*/
public void setHelpGame()
{
  textarea_help.setText("\nThe Game section was not finished in time to be featured.");
}
/*
*  when on development page the help should display this
*/
public void setHelpDevelopment()
{
  textarea_help.setText("\nFirstly you will notice you can create exercises or edit them."
  + " The editing function was not finished in time to be featured so you can only create.\n\n"
  + "Once you have selected create you will need to enter in the exercises name and enter its "
  + "type this is the limbs which will be used to calculate angles. So if you select Right "
  + "Arm you must perform an exercise which uses that arm as the function only analises the "
  + "selected limb. Next select the time of the exercise.\n\n"
  + "It is vital that you MAKE SURE THE KINECT IS CONNECTED BEFORE PROCEEDING before pressing record. "
  + "Next the Kinect will turn on and you need to perform the calibration this is the 'stick em up pose' stand straight about "
  + " 2.5 metres away from the kinect and stick your hands in the air so that your upper arms are paralell with your "
  + "shoulders but the lower arms are creating a 90 degree angle up towards the ceiling. the recording should start "
  + "when calibrated, you have 5 seconds to get into position before the systems begins to record the data.\n\n"
  + "Once complete you will be presented with the exercise ID this will be useful to keep a note of as the "
  + "name was not used to select for the patients recordings this is simply a run out of time problem for the developer.");
}
