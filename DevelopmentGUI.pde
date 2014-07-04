
/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Development Page Controller
*  Creates, sets and draws Development
*  page and sets up the GUI for it,
*  handles all the methods for developing
*  exercises
*/

Exercise exercise;

int color_mainscreen = 240;
boolean newExerciseSelected = false;

public void createDevelopmentPage()
{
  
  button_createexercise = control_tabs
  .addButton("button_createexercise").setPosition(500, 245)
  .setSize(300, 60).setCaptionLabel("Create Exercise");
  
  button_editexercise = control_tabs
  .addButton("button_editexercise").setPosition(500, 310)
  .setSize(300, 60).setCaptionLabel("Edit Exercise");
  
  label_createexercise = control_tabs
  .addTextlabel("label_createexercise").setText("CREATE EXERCISE")
  .setPosition(550, 150).setColorValue(0xff000000)
  .setVisible(false);

  label_exercisename = control_tabs
  .addTextlabel("label_exercisename").setText("Exercise Name")
  .setPosition(400, 250).setColorValue(0xff000000)
  .setVisible(false);
  
  textfield_exercisename = control_tabs
  .addTextfield("textfield_exercisename").setPosition(640, 245)
  .setSize(200, 40).setCaptionLabel("").setVisible(false);
  
  label_exerciselimbs = control_tabs
  .addTextlabel("label_exerciselimbs").setText("Focused On Limbs")
  .setPosition(400, 300).setColorValue(0xff000000)
  .setVisible(false);

  dropdownlist_limbs = control_tabs
  .addDropdownList("dropdownlist_limbs")
  .setPosition(640, 335).setSize(200, 70).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_limbs.captionLabel().set("Kneck");
  dropdownlist_limbs.captionLabel().style().marginTop = 3;
  dropdownlist_limbs.captionLabel().style().marginLeft = 3;
  dropdownlist_limbs.valueLabel().style().marginTop = 3;
  
  dropdownlist_limbs.addItem("Kneck", 0);
  dropdownlist_limbs.addItem("Left Arm", 1);
  dropdownlist_limbs.addItem("Right Arm", 2);
  dropdownlist_limbs.addItem("Left Leg", 3);
  dropdownlist_limbs.addItem("Right Leg", 4);
  
  label_settime = control_tabs.addTextlabel("label_settime")
  .setText("Set Time Of Exercise").setPosition(400, 350)
  .setColorValue(0xff000000).setVisible(false);
  
  slider_exercisetime = control_tabs
 .addSlider("slider_exercisetime", 5, 60).setPosition(640, 345)
 .setSize(200, 40).setValue(60).setCaptionLabel("")
 .setVisible(false);
  
  button_submitexercise = control_tabs
  .addButton("button_submitexercise").setPosition(640, 395)
  .setSize(200, 40).setCaptionLabel("Create Exercise")
  .setVisible(false);
  
  label_chooseexercise = control_tabs
  .addTextlabel("label_chooseexercise").setText("Select Exercise")
  .setPosition(400, 360).setColorValue(0xff000000)
  .setVisible(false);
  
  dropdownlist_chooseexercise = control_tabs
  .addDropdownList("dropdownlist_chooseexercise")
  .setPosition(640, 395).setSize(200, 70).setBarHeight(40)
  .setItemHeight(30).setVisible(false);
  
  dropdownlist_chooseexercise.captionLabel().set("Exercises");
  dropdownlist_chooseexercise.captionLabel()
  .style().marginTop = 3;
  dropdownlist_chooseexercise.captionLabel().style()
  .marginLeft = 3;
  dropdownlist_chooseexercise.valueLabel().style().marginTop = 3;
  
  button_deleteexercise = control_tabs
  .addButton("button_deleteexercise").setPosition(400, 445)
  .setSize(200, 40).setCaptionLabel("Delete Exercise")
  .setVisible(false);
  
  button_editthisexercise = control_tabs
  .addButton("button_editthisexercise").setPosition(640, 445)
  .setSize(200, 40).setCaptionLabel("Edit Exercise")
  .setVisible(false);

  button_record = control_tabs.addButton("button_record")
  .setPosition(220, 585).setSize(200, 40)
  .setCaptionLabel("RECORD").setVisible(false);
  
  button_stop = control_tabs.addButton("button_stop")
  .setPosition(430, 585).setSize(200, 40)
  .setCaptionLabel("STOP").setVisible(false);
  
  label_exerciseId = control_tabs
  .addTextlabel("label_exerciseId").setText("Exercise ID: ")
  .setPosition(550, 150).setColorValue(0xff000000)
  .setVisible(false);
  
  
  
  control_tabs.getController("button_createexercise")
  .moveTo("Development");
  control_tabs.getController("button_editexercise")
  .moveTo("Development");
  control_tabs.getController("label_createexercise")
  .moveTo("Development");
  control_tabs.getController("label_exercisename")
  .moveTo("Development");
  control_tabs.getController("textfield_exercisename")
  .moveTo("Development");
  control_tabs.getController("label_exerciselimbs")
  .moveTo("Development");
  control_tabs.getController("label_settime")
  .moveTo("Development");
  control_tabs.getController("slider_exercisetime")
  .moveTo("Development");
  control_tabs.getController("button_submitexercise")
  .moveTo("Development");
  dropdownlist_limbs.setTab("Development");
  control_tabs.getController("label_chooseexercise")
  .moveTo("Development");
  control_tabs.getController("button_deleteexercise")
  .moveTo("Development");
  control_tabs.getController("button_editthisexercise")
  .moveTo("Development");
  dropdownlist_chooseexercise.setTab("Development");
  control_tabs.getController("button_record")
  .moveTo("Development");
  control_tabs.getController("button_stop")
  .moveTo("Development");
  control_tabs.getController("label_exerciseId").moveTo("Development");
  
}
public void drawDevelopmentPage()
{
  
   fill(color_mainscreen);
   rect(322, 101, 640, 480); 
  
}

/*
*  set up all the elements to create an exercise
*/

public void createExercise()
{
  
  button_createexercise.setVisible(false);
  button_editexercise.setVisible(false);
  label_createexercise.setVisible(true);
  label_exercisename.setVisible(true);
  textfield_exercisename.setVisible(true);
  label_exerciselimbs.setVisible(true)
  .setText("Focused On Limbs").setPosition(400, 300);
  label_settime.setVisible(true);
  dropdownlist_limbs.setPosition(640, 335).setVisible(true);
  slider_exercisetime.setVisible(true);
  button_submitexercise.setVisible(true)
  .setCaptionLabel("Create Exercise");
  
  label_chooseexercise.setVisible(false);
  dropdownlist_chooseexercise.setVisible(false);
  button_deleteexercise.setVisible(false);
  button_editthisexercise.setVisible(false);
  
  exercise = new Exercise();
  
}

/*
*  display record button
*/

public void recordNewExercise()
{
  
  if(!(textfield_exercisename.getText().equals("")) )
  {
    label_createexercise.setVisible(false);
    label_exercisename.setVisible(false);
    textfield_exercisename.setVisible(false);
    label_exerciselimbs.setVisible(false);
    dropdownlist_limbs.setVisible(false);
    label_settime.setVisible(false);
    slider_exercisetime.setVisible(false);
    button_submitexercise.setVisible(false);
  
    button_record.setVisible(true);
    button_stop.setVisible(true);
  
    title = "CREATE NEW EXERCISE";
    label_title.setText(title);
  
    color_mainscreen = 0;
    label_errorMessage.setVisible(false);
  }
  else
  {
    label_errorMessage.setText("**MUST COMPLETE ALL FIELDS").setVisible(true);
  }
  
}

/*
*  display fields for editing exercise
*/

public void editExercise()
{
  
  button_createexercise.setVisible(false);
  button_editexercise.setVisible(false);
  label_createexercise.setVisible(true)
  .setText("EDIT EXERCISE");
  label_exerciselimbs.setVisible(true)
  .setText("Select Exercise Type")
  .setPosition(400, 250).bringToFront();
  dropdownlist_limbs.setPosition(640, 285).setVisible(true);
  label_chooseexercise.setVisible(true);
  dropdownlist_chooseexercise.setVisible(true);
  button_deleteexercise.setVisible(true);
  button_editthisexercise.setVisible(true);
}

/*
*  get exercise types 
*/

public void setChooseExercise()
{
  int numberInType = 0;
  dropdownlist_chooseexercise.clear();
  dropdownlist_chooseexercise.captionLabel().set("Exercises");
  for(int i =0; i < 5; i++)
  {
    if(exercises[i].getType().equals(newExerciseType))
    {
      dropdownlist_chooseexercise.addItem(exercises[i]
      .getNameOfExercise(), numberInType);
      numberInType++;
    }
  }
 
}

/*
*  get exercise to record over
*/
public void editThisExercise()
{
  createExercise();
  for(int i = 0; i < 5; i++)
  {
    if(dropdownlist_chooseexercise.captionLabel().getText()
    .equals(exercises[i].getNameOfExercise()))
    {
      textfield_exercisename.setText(exercises[i]
      .getNameOfExercise());
      slider_exercisetime.setValue(exercises[i].getTime());
    }
  }
  button_submitexercise.setCaptionLabel("RE-RECORD");
}
