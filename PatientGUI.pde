/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Patient Page Controller
*  Creates, sets and draws Patient
*  page and sets up the GUI for it,
*  handles all the methods for finding
*  and registering a patient and also displaying
*  the patients statistics
*/
/*
*  create the gui for the page
*/
public void createPatientPage()
{

  label_enterpatientid = control_tabs
  .addTextlabel("label_enterpatientid")
  .setText("Exercise Patient ID").setPosition(400, 250)
  .setColorValue(0xff000000);
  
  textfield_enterpatientid = control_tabs
  .addTextfield("textfield_enterpatientid").setPosition(640, 240)
  .setSize(200, 40).setCaptionLabel("");
  
  button_enterpatient = control_tabs
  .addButton("button_enterpatient").setPosition(640, 295)
  .setSize(200, 40).setCaptionLabel("Find Patient");
  
  button_registerpatient = control_tabs
  .addButton("button_registerpatient").setPosition(400, 295)
  .setSize(200, 40).setCaptionLabel("Register Patient");
  
  label_register = control_tabs
  .addTextlabel("label_register")
  .setText("Register Patient").setPosition(550, 150)
  .setColorValue(0xff000000).setVisible(false);
  
  label_firstname = control_tabs
  .addTextlabel("label_firstname").setText("Firstname")
  .setPosition(400, 200).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_firstname = control_tabs
  .addTextfield("textfield_firstname").setPosition(640, 190)
  .setSize(200, 40).setCaptionLabel("").setVisible(false);
  
  label_surname = control_tabs
  .addTextlabel("label_surname").setText("Surname")
  .setPosition(400, 250).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_surname = control_tabs
  .addTextfield("textfield_surname").setPosition(640, 240)
  .setSize(200, 40).setCaptionLabel("").setVisible(false);
  
  label_dob = control_tabs
  .addTextlabel("label_dob").setText("Date Of Birth")
  .setPosition(400, 300).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_dob = control_tabs
  .addTextfield("textfield_dob").setPosition(640, 290)
  .setSize(200, 40).setCaptionLabel("").setVisible(false);
  
  label_ailment = control_tabs
  .addTextlabel("label_ailment").setText("Ailment")
  .setPosition(400, 350).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_ailment = control_tabs
  .addTextfield("textfield_ailment").setPosition(640, 340)
  .setSize(200, 40).setCaptionLabel("").setVisible(false);
  
  label_notes = control_tabs
  .addTextlabel("label_notes").setText("Notes")
  .setPosition(400, 400).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_notes = control_tabs
  .addTextfield("textfield_notes").setPosition(640, 390)
  .setSize(200, 40)
  .setVisible(false);
  
  button_register = control_tabs
  .addButton("button_register").setPosition(640, 440)
  .setSize(200, 40).setCaptionLabel("Register")
  .setVisible(false);
  
  label_displayid = control_tabs
  .addTextlabel("label_displayid").setText("Notes")
  .setPosition(400, 150).setColorValue(0xff000000)
  .setVisible(false);
  
  label_displaydob = control_tabs
  .addTextlabel("label_displaydob").setText("Notes")
  .setPosition(400, 200).setColorValue(0xff000000)
  .setVisible(false);
  
  label_displayailment = control_tabs
  .addTextlabel("label_displayailment").setText("Notes")
  .setPosition(400, 250).setColorValue(0xff000000)
  .setVisible(false);
  
  label_displaynotes = control_tabs
  .addTextlabel("label_displaynotes").setText("Notes")
  .setPosition(400, 300).setColorValue(0xff000000)
  .setVisible(false);

  button_close= control_tabs.addButton("button_close")
  .setPosition(220, 585).setSize(200, 40)
  .setCaptionLabel("CLOSE").setVisible(false);
  
  button_range= control_tabs.addButton("button_range")
  .setPosition(430, 585).setSize(200, 40)
  .setCaptionLabel("RANGE").setVisible(false);
  
  button_statistics = control_tabs.addButton("button_statistics")
  .setPosition(640, 585).setSize(200, 40)
  .setCaptionLabel("STATISTICS").setVisible(false);
  
  label_statistics = control_tabs
  .addTextlabel("label_statistics").setText("Patient Statistics")
  .setPosition(380, 150).setColorValue(0xff000000)
  .setVisible(false);
 
  label_statisticsImproved = control_tabs
  .addTextlabel("label_statisticsImproved").setText("Improvment: ")
  .setPosition(380, 530).setColorValue(0xff000000)
  .setVisible(false);
  
  label_errorMessage = control_tabs
  .addTextlabel("label_errorMessage").setText("**")
  .setPosition(20, 110).setColorValue(0xffcc0000)
  .setVisible(false);
 
  control_tabs.getController("label_enterpatientid")
  .moveTo("Patient");
  control_tabs.getController("textfield_enterpatientid")
  .moveTo("Patient");
  control_tabs.getController("button_enterpatient")
  .moveTo("Patient");
  control_tabs.getController("button_registerpatient")
  .moveTo("Patient");
  control_tabs.getController("label_register")
  .moveTo("Patient");
  control_tabs.getController("label_firstname")
  .moveTo("Patient");
  control_tabs.getController("textfield_firstname")
  .moveTo("Patient");
  control_tabs.getController("label_surname")
  .moveTo("Patient");
  control_tabs.getController("textfield_surname")
  .moveTo("Patient");
  control_tabs.getController("label_dob")
  .moveTo("Patient");
  control_tabs.getController("textfield_dob")
  .moveTo("Patient");
  control_tabs.getController("label_ailment")
  .moveTo("Patient");
  control_tabs.getController("textfield_ailment")
  .moveTo("Patient");
  control_tabs.getController("label_notes")
  .moveTo("Patient");
  control_tabs.getController("textfield_notes")
  .moveTo("Patient");
  control_tabs.getController("button_register")
  .moveTo("Patient");
  control_tabs.getController("label_displayid")
  .moveTo("Patient");
  control_tabs.getController("label_displaydob")
  .moveTo("Patient");
  control_tabs.getController("label_displayailment")
  .moveTo("Patient");
  control_tabs.getController("label_displaynotes")
  .moveTo("Patient");
  control_tabs.getController("button_range")
  .moveTo("Patient");
  control_tabs.getController("button_close")
  .moveTo("Patient");
  control_tabs.getController("button_statistics")
  .moveTo("Patient");
  control_tabs.getController("label_statistics")
  .moveTo("Patient");
  control_tabs.getController("label_statisticsImproved")
  .moveTo("Patient");
  control_tabs.getController("label_errorMessage")
  .moveTo("global");
}
/*
*  draw main page
*/
public void drawPatientPage()
{
   fill(color_mainscreen);
   rect(322, 101, 640, 480); 
}

/*
*  display fields for registering a patient
*/
public void registerPatient()
{
  
  label_enterpatientid.setVisible(false);
  textfield_enterpatientid.setVisible(false);
  button_enterpatient.setVisible(false);
  button_registerpatient.setVisible(false);
  label_register.setVisible(true);
  label_firstname.setVisible(true);
  textfield_firstname.setVisible(true);
  label_surname.setVisible(true);
  textfield_surname.setVisible(true);
  label_dob.setVisible(true);
  textfield_dob.setVisible(true);
  label_ailment.setVisible(true);
  textfield_ailment.setVisible(true);
  label_notes.setVisible(true);
  textfield_notes.setVisible(true);
  button_register.setVisible(true);
}
/*
*  validate registration and upload new patient account
*  to the database
*/
public void uploadPatient()
{
  if(!connected)
  {
        label_errorMessage.setText("** NO DATABASE CONNECTION").setVisible(true);    
  }
  else
  {
    if(!(textfield_firstname.getText().equals(""))  &&  !(textfield_surname.getText().equals("")) && !(textfield_dob.getText().equals("")) && !(textfield_ailment).getText().equals("") && !(textfield_notes).getText().equals(""))
    {
      label_errorMessage.setVisible(false);
      int newID = 0;
      database.query("SELECT * FROM Patient");
      while(database.next())
      {
        newID = database.getInt("patient_id");
        println("id = " + newID);
      }
      newID++;
      patient = new Patient();
      patient.setId(String.valueOf(newID));
      patient.setFirstName(textfield_firstname.getText());
      patient.setSurname(textfield_surname.getText());
      patient.setDob(textfield_dob.getText());
      patient.setNotes(textfield_notes.getText());
      patient.setAilment(textfield_ailment.getText());
  
      String[] names = new String[6];
      names[0] = "patient_id";
      names[1] = "first_name";
      names[2] = "surname";
      names[3] = "ailment";
      names[4] = "date_of_birth";
      names[5] = "notes";
      Object[] objects = new Object[6];
      objects[0] = patient.getId();
      objects[1] = patient.getFirstName();
      objects[2] = patient.getSurname();
      objects[3] = patient.getAilment();
      objects[4] = patient.getDob();
      objects[5] = patient.getNotes();
        
      database.insertUpdateInDatabase("Patient", names, objects);
      String patientID = "`P" + patient.getId() + "`";
      database.execute("CREATE TABLE `Physiotherapy`."+ patientID + "(`recording_id` INT NOT NULL,`exercise_id` INT NULL, `exercise_name` VARCHAR(45) NULL, `exercise_type` VARCHAR(45) NULL,`exercise_time` VARCHAR(45) NULL,`date_performed` DATE NULL, `exercise_grade` VARCHAR(45) NULL, `resistence` VARCHAR(45) NULL,`score` INT NULL, `good_1st` INT NULL,  `good_2nd` INT NULL, `ok_1st` INT NULL, `ok_2nd` INT NULL, `bad_1st` INT NULL, `bad_2nd` INT NULL, PRIMARY KEY (`recording_id`));");

      activePatient = true;
      displayPatientDetails();
      button_close.setVisible(true);
      button_range.setVisible(true);
    }
    else
    {
      label_errorMessage.setText("**FILL OUT ALL FIELDS").setVisible(true);
    }
  }      
}

/*
*  display the patients details on the main page
*/
public void displayPatientDetails()
{
  
  label_register.setVisible(false);
  label_firstname.setVisible(false);
  textfield_firstname.setVisible(false);
  label_surname.setVisible(false);
  textfield_surname.setVisible(false);
  label_dob.setVisible(false);
  textfield_dob.setVisible(false);
  label_ailment.setVisible(false);
  textfield_ailment.setVisible(false);
  label_notes.setVisible(false);
  textfield_notes.setVisible(false);
  button_register.setVisible(false);
  
  title = patient.getFirstName() + " " +
  patient.getSurname();
  
  label_title.setText(title);
  
  label_displayid.setVisible(true);
  label_displayid.setText("Patient ID: " 
  + patient.getId());
  label_displaydob.setVisible(true);
  label_displaydob.setText("Date Of Birth: " 
  + patient.getDob());
  label_displayailment.setVisible(true);
  label_displayailment.setText("Patient Ailment: " 
  + patient.getAilment());
  label_displaynotes.setVisible(true);
  label_displaynotes.setText("Patient Notes: " 
  + patient.getNotes());
}

/*
*  vlidate patient ID then download patient details
*/
public void enterPatient()
{
  boolean correctID = true;
  
  if(!textfield_enterpatientid.getText().equals(""))
      {
        try
        {
          int id = Integer.valueOf(textfield_enterpatientid.getText());
        }
        catch(Exception e)
        {
          label_errorMessage.setText("** ID MUST BE AN INTEGER").setVisible(true);
          correctID = false;
        }
      }
      else
      {
        label_errorMessage.setText("** NO PATIENT ID ENTERED").setVisible(true);
        correctID = false;
      }
      
      if(!connected)
      {
        label_errorMessage.setText("** NO DATABASE CONNECTION").setVisible(true);
        correctID = false;
      }
      else if(correctID)
      {
        database.query("SELECT * FROM Patient WHERE patient_id = " + textfield_enterpatientid.getText());
        String tempName = "no name";
        
        while(database.next())
        {
          tempName = database.getString("first_name");
        }
        println(tempName);
        if(tempName.equals("no name"))
        {
            label_errorMessage.setText("** INVALID PATIENT ID").setVisible(true);
            correctID = false;
        }
      }    
      
  if(correctID)
  {
    label_enterpatientid.setVisible(false);
    textfield_enterpatientid.setVisible(false);
    button_enterpatient.setVisible(false);
    button_registerpatient.setVisible(false);
    label_errorMessage.setVisible(false);
  
    database.query("SELECT * FROM Patient WHERE patient_id = " +
    textfield_enterpatientid.getText());
  
    while(database.next())
    {
      patient = new Patient();
      patient.setId(textfield_enterpatientid.getText());
      patient.setFirstName(database.getString("first_name"));
      patient.setSurname(database.getString("surname"));
      patient.setDob(database.getString("date_of_birth"));
      patient.setAilment(database.getString("ailment"));
      patient.setNotes(database.getString("notes"));
      println(patient.getId());
      displayPatientDetails();
    }
  
    activePatient = true;
    button_close.setVisible(true);
    button_range.setVisible(true);
    button_statistics.setVisible(true);
  }
}

/*
*  reset the page when patient details are closed
*/
public void resetPatientPage()
{
  label_enterpatientid.setVisible(true);
  textfield_enterpatientid.setText("").setVisible(true);
  button_enterpatient.setVisible(true);
  button_registerpatient.setVisible(true);
  label_register.setVisible(false);
  label_firstname.setVisible(false);
  textfield_firstname.setVisible(false);
  label_surname.setVisible(false);
  textfield_surname.setVisible(false);
  label_dob.setVisible(false);
  textfield_dob.setVisible(false);
  label_ailment.setVisible(false);
  textfield_ailment.setVisible(false);
  label_notes.setVisible(false);
  textfield_notes.setVisible(false);
  button_register.setVisible(false);
  label_displayid.setVisible(false);
  label_displaydob.setVisible(false);
  label_displayailment.setVisible(false);
  label_displaynotes.setVisible(false);
  button_range.setVisible(false);
  button_close.setVisible(false);
  button_statistics.setVisible(false);
  label_statistics.setVisible(false);
  label_statisticsImproved.setVisible(false);
  
  title = "PATIENT";
  label_title.setText(title);
  
  patientStatistics = false;
  
  closeExercisePage();  //  found on ExerciseGUI

}

/*
*  when statisics are selected create a graph plotting all of the
*  completed exercises and state whether there is improvement
*/
public void viewStatistics()
{
  label_register.setVisible(false);
  label_firstname.setVisible(false);
  textfield_firstname.setVisible(false);
  label_surname.setVisible(false);
  textfield_surname.setVisible(false);
  label_dob.setVisible(false);
  textfield_dob.setVisible(false);
  label_ailment.setVisible(false);
  textfield_ailment.setVisible(false);
  label_notes.setVisible(false);
  textfield_notes.setVisible(false);
  button_register.setVisible(false);
  label_displayid.setVisible(false);
  label_displaydob.setVisible(false);
  label_displayailment.setVisible(false);
  label_displaynotes.setVisible(false);
  button_range.setVisible(false);
  button_statistics.setVisible(false);
  
  graph = new Graph();
    
  String patientID = "P" + patient.getId();
  int count = 0;
  ArrayList<String> grades = new ArrayList();

  database.query( "SELECT * FROM " + patientID);
  while(database.next())
  {
     grades.add(database.getString("exercise_grade"));
     count++;
   }
    
   println("count: " + count);
   graph.setPosition(372, 201);
   graph.setPoints(count, grades);
   label_statistics.setVisible(true);
   label_statisticsImproved.setText("Improving : " + graph.improved()).setVisible(true);
   patientStatistics = true;
}

/*
*  draw the graph
*/
public void drawStatistics()
{
   fill(255);
   rect(322, 101, 640, 480);
   graph.drawGraph();
   
}
