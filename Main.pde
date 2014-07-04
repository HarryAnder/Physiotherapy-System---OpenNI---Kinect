import de.bezier.data.sql.*;

/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Main Controller
*  Creates, sets and draws the approriate
*  pages and sets up the recording
*/


MySQL database;

String u = "harry", p = "password",
db = "Physiotherapy";
SkeletonPlayer player1 = new SkeletonPlayer();
SkeletonPlayer player2 = new SkeletonPlayer();
Skeleton userSkeleton, playerSkeleton;
SkeletonSize userSize, playerSize;
SkeletonDifference skeletonDifference;
SkeletonAdjuster skeletonAdjuster;

int colour_background = color(150);
boolean cameraOn = false, activePatient = false, playing = false, playingDouble = false, slowDown = false, adjusted = false, development = false,
resistence = true, exerciseAnalysis = false, patientStatistics = false, help = false; 

String title = "LOGIN", timer, message;
User user;
Patient patient;
Exercise[] exercises = new Exercise[6];

boolean connected;

int tab = 1, time, preTime;

void setup()
{
  size(1300, 630, P3D);  //  screen size

  //  connecting to local host to the db = Physiotherapy, username and
  //  password for the local host account
  database = new MySQL(this, "localhost", db, u, p);
  
  if( database.connect())
  {
    println("connected to database!");
    connected = true;
  }
  else
  {
    println("not connected to database!");
    connected = false;
  }

  control = new ControlP5(this);
  control_tabs = new ControlP5(this); 

  createGUI();  //  LOCATED IN GUI THIS CREATES THE GLOABAL GUI
  
  //  SOME HARDCODED OBJECTS
  user = new User();
  user.setUsername("w1317157");
  user.setPassword("password");
  user.setNameOfUser("Harry");
  user.setType("Developer");
  
  patient = new Patient();
  patient.setFirstName("Rand");
  patient.setSurname("al'Thor");
  patient.setDob("19/02/1992");
  patient.setId("0");
  patient.setAilment("Bad Left Arm");
  patient.setNotes("none");
  
  exercises[0] = new Exercise();
  exercises[0].setType("Kneck");
  exercises[0].setNameOfExercise("Lifting Chin");
  exercises[0].setTime(30);
  
  exercises[1] = new Exercise();
  exercises[1].setType("Kneck");
  exercises[1].setNameOfExercise("Turning Chin");
  exercises[1].setTime(25);
  
  exercises[2] = new Exercise();
  exercises[2].setType("Left Arm");
  exercises[2].setNameOfExercise("190 Lift");
  exercises[2].setTime(45);
  
  exercises[3] = new Exercise();
  exercises[3].setType("Right Leg");
  exercises[3].setNameOfExercise("Knee Torso Level");
  exercises[3].setTime(30);
  
  exercises[4] = new Exercise();
  exercises[4].setType("Left Arm");
  exercises[4].setNameOfExercise("180 Lift");
  exercises[4].setTime(35);
  
  exercises[5] = new Exercise();

  user.setLoggedIn(false);
  
  //  CRATES THE GUI PAGES WHICH HAVENT BEEN CREATED ALREADY 
  //  FOUND IN THERE CORROSPSONDING GUI PAGES
  createDevelopmentPage();
  createPatientPage();
  createExercisePage();
  
}

void draw()
{
  //  DRAW SOME DESIGN 
  background(colour_background);
  fill(90);
  strokeWeight(1);
  rect(0, 0, width, 100);
  rect(0, 581, width, 59);
  
  //  TABS ARE USED SO ONLY DRAW THE PAGE WHICH THE TAB IS 
  //  CURRENTLY ON 
  if(tab == 1)
  {  //  IF USER IS NOT LOGGED IN AND IN TAB1 DRAW LOGIN PAGE
    development = false;
    if(!user.getLoggedIn())
    {
      drawLoginPage();
    }
    
    else
    {//  ELSE THE USER IS LOGGED IN DRAW THE LOGGED IN PAGE
      drawLoginPage();
      if(!page_login_yes)
      {  //  ONLY DRAW IT ONCE 
        createLoginPageLoggedIn();
        page_login_yes = true;
        page_login_no = false;
      }
    }
    setHelpLoggin();
  }
  
  else if(tab == 2)
  {  //  IF TAB2 THEN DRAW PATIENT PAGE
    development = false;
    if(patientStatistics)
    {
      drawStatistics();
    }
    else
    {
      drawPatientPage();
    }
    setHelpPatient();
  }
  
  else if(tab == 3)
  {  //  IF TAB3 THEN DRAW EXERCISE PAGE
    development = false;
    if(playing && !recording)
    {
      fill(0);
      rect(322, 101, 640, 480);
      play();  //  located in ExerciseGUI draws video
    }
    else if(playingDouble && !recording)
    {
      fill(0);
      rect(0, 101, 640, 480);
      rect(656, 101, 640, 480);
      playDouble();  //  located in ExerciseGUI draws two videos
    }
    
      else if(newExerciseSelected)
    {  //  TRUE WHEN button_submitExercise HAS BEEN SELECTED ON
       //  THE DEVELOPMENT TAB
       fill(0);
       rect(322, 101, 640, 480);
      if(cameraOn)
      {  //  TRUE WHEN button_record HAS BEEN SELECTED ON THE
         //  DEVELOPMENT TAB, SO BEGIN RECORDING
        //println(preTime); 
        if(preTime > 0)
        {
          drawRecorder(false);  //  FOUND INSIDE Recorder THIS WILL 
        //  UPDATE THE KINECT AND SET UP THE WHOLE PROCESS OF
        //  RECORDING STARTING WITH FINDING A USER AND 
        //  CALIBRATIN THEM
        
        if(recording)
        {  //  WHEN THE USER IS CALIBRATED recording IS TRUE
          title = "USER CALIBRATED";
          label_title.setText(title);
          if(!adjusted)
          {
            adjustSkeletonPlayer(); //  located in ExerciseGUI not used
            adjusted = true;
          }
          
          playFirstFrame(); //  located in ExerciseGUI draws video
          fill(0);
          text("Begin In " + preTime + " Sec", 975, 150);  //  EXERCISES HAVE
          //  A SET TIME AND THIS DISPLAYS THE COUNTDOWN TIMER
          
          if(!timer.equals(controltimer_exercisetimer.toString()))
          {  //  ControlP5 COMES WITH A TIMER THAT COUNTS UP BUT
             //  NOT A COUNTDOWN TIMER SO INSTEAD I CHECK FOR WHEN
             //  controltimer_exerciseTimer CHANGES THEN DECREMENT
             //  MY time VALUE
             
            preTime--;
            
          }
         
          timer = controltimer_exercisetimer.toString();
          //  UPDATES THE TIME DISPLAYED FOR THE EXERCISE
        }
        }
        else
        {
          
          drawRecorder(true);  //  FOUND INSIDE Recorder THIS WILL 
        //  UPDATE THE KINECT AND SET UP THE WHOLE PROCESS OF
        //  RECORDING STARTING WITH FINDING A USER AND 
        //  CALIBRATIN THEM
        if(recording)
        {  //  WHEN THE USER IS CALIBRATED recording IS TRUE
          title = "USER CALIBRATED";
          label_title.setText(title);
          playWhileRecording();
          fill(0);
          text(time + " Seconds", 975, 150);  //  EXERCISES HAVE
          //  A SET TIME AND THIS DISPLAYS THE COUNTDOWN TIMER
          
          if(!timer.equals(controltimer_exercisetimer.toString()))
          {  //  ControlP5 COMES WITH A TIMER THAT COUNTS UP BUT
             //  NOT A COUNTDOWN TIMER SO INSTEAD I CHECK FOR WHEN
             //  controltimer_exerciseTimer CHANGES THEN DECREMENT
             //  MY time VALUE
             
            time--;
            
          }
          if(time < 0)
          {  //  IF time IS AT 0 THEN THE EXERCISE IS COMPLETE,
             //  SAVE THE EXERCISE AND STOP THE KINECT FROM 
             //  RECORDING
             
            title = "EXERCISE SAVED";
            label_title.setText(title);
            
            endRecording();  //  FOUND IN Recorder SAVES THE 
            //  EXERCISE TO XML AND TURNS OFF THE KINECT
            
            cameraOn = false;  //  CAMERA NO LONGER ON
            
            displayRecordingAnalysis();
          }
          timer = controltimer_exercisetimer.toString();
          //  UPDATES THE TIME DISPLAYED FOR THE EXERCISE
        }
        }
        
        

      }
      else
      {
        newExerciseSelected = false;  //  NO LONGER RECORDING A 
        //  NEW EXERCISE
      }
    }
    else if(exerciseAnalysis)
    {
      
      drawRecordingAnalysis();
    }
    else
    {
      drawExercisePage();
    }
    setHelpExercise();
    }
    
  
  else if(tab == 4)
  {  //  IF TAB4 THEN DRAW GAME PAGE
    development = false;
    setHelpGame();
  }
  else
  {  // ELSE YOUR ON TAB5 THEN DRAW DEVELOPMENT PAGE
    development = true;
    
    drawDevelopmentPage();
    setHelpDevelopment();
    
    //  THE KINECT CONSTANTLY NEEDS UPDATING TO BUILD A PICTURE
    //  OF WHAT ITS SEEING BUT I DONT WANT IT ON UNLESS A NEW
    //  EXERCISE HAS BEEN SELECTED AND ITS MEANT TO BE RECORDING
    if(newExerciseSelected)
    {  //  TRUE WHEN button_submitExercise HAS BEEN SELECTED ON
       //  THE DEVELOPMENT TAB
      if(cameraOn)
      {  //  TRUE WHEN button_record HAS BEEN SELECTED ON THE
         //  DEVELOPMENT TAB, SO BEGIN RECORDING 
          
        if(preTime > 0)
        {
          drawRecorder(false);  //  FOUND INSIDE Recorder THIS WILL 
          //  UPDATE THE KINECT AND SET UP THE WHOLE PROCESS OF
          //  RECORDING STARTING WITH FINDING A USER AND 
          //  CALIBRATIN THEM
        
          if(recording)
          {  //  WHEN THE USER IS CALIBRATED recording IS TRUE
        
            fill(0);
            text("Begin in " + preTime + " Seconds", 975, 150);  //  EXERCISES HAVE
            //  A SET TIME AND THIS DISPLAYS THE COUNTDOWN TIMER
          
            if(!timer.equals(controltimer_exercisetimer.toString()))
            {  //  ControlP5 COMES WITH A TIMER THAT COUNTS UP BUT
             //  NOT A COUNTDOWN TIMER SO INSTEAD I CHECK FOR WHEN
             //  controltimer_exerciseTimer CHANGES THEN DECREMENT
             //  MY time VALUE
             
              preTime--;
            
            }
         
            timer = controltimer_exercisetimer.toString();
            //  UPDATES THE TIME DISPLAYED FOR THE EXERCISE
          }
        }
        else
        {
          drawRecorder(true);  //  FOUND INSIDE Recorder THIS WILL 
        //  UPDATE THE KINECT AND SET UP THE WHOLE PROCESS OF
        //  RECORDING STARTING WITH FINDING A USER AND 
        //  CALIBRATIN THEM
        
          if(recording)
        {  //  WHEN THE USER IS CALIBRATED recording IS TRUE
        
          fill(0);
          text(time + " Seconds", 975, 150);  //  EXERCISES HAVE
          //  A SET TIME AND THIS DISPLAYS THE COUNTDOWN TIMER
          
          if(!timer.equals(controltimer_exercisetimer.toString()))
          {  //  ControlP5 COMES WITH A TIMER THAT COUNTS UP BUT
             //  NOT A COUNTDOWN TIMER SO INSTEAD I CHECK FOR WHEN
             //  controltimer_exerciseTimer CHANGES THEN DECREMENT
             //  MY time VALUE
             
            time--;
            
          }
          if(time < 0)
          {  //  IF time IS AT 0 THEN THE EXERCISE IS COMPLETE,
             //  SAVE THE EXERCISE AND STOP THE KINECT FROM 
             //  RECORDING
             
            title = "EXERCISE SAVED";
            label_title.setText(title);
            
            endRecording();  //  FOUND IN Recorder SAVES THE 
            //  EXERCISE TO XML AND TURNS OFF THE KINECT
            
            cameraOn = false;  //  CAMERA NO LONGER ON
          }
          timer = controltimer_exercisetimer.toString();
          //  UPDATES THE TIME DISPLAYED FOR THE EXERCISE
        }
        }
      }
      else
      {
        newExerciseSelected = false;  //  NO LONGER RECORDING A 
        color_mainscreen = 255;
        String id = "Exercise ID: " + String.valueOf(exercise.getId());
        println(id);
        label_exerciseId.setText(id).setVisible(true);
        //  NEW EXERCISE
      }
    }
  }  
}
