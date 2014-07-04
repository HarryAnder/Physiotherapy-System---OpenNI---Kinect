/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Login Page Controller
*  Creates, sets and draws Login
*  page and sets up the GUI for it,
*  handles all the methods loggin
*/

public void createLoginPage()
{

  label_username = control_tabs.addTextlabel("label_username")
  .setText("Username").setPosition(450, 200)
  .setColorValue(0xff000000);
  
  label_password = control_tabs.addTextlabel("label_password")
  .setText("Password").setPosition(450, 250)
  .setColorValue(0xff000000);
  
  textfield_username = control_tabs
  .addTextfield("textfield_username").setPosition(570, 195)
  .setSize(200, 40).setCaptionLabel("");
  
  textfield_password = control_tabs
  .addTextfield("textfield_password").setPosition(570, 245)
  .setSize(200, 40).setCaptionLabel("").setPasswordMode(true);
  
  button_login = control_tabs.addButton("button_login")
  .setPosition(570, 295).setSize(200, 40).setCaptionLabel("Login");

}
/*
*  draw the main page
*/
public void drawLoginPage()
{
  fill(245);
  rect(322, 101, 640, 480);
}
/*
*  create the gui for the page
*/
public void createLoginPageLoggedIn()
{
  
  fill(245);
  rect(322, 101, 640, 480);
  label_username.setVisible(false);
  label_password.setVisible(false);
  textfield_username.setVisible(false);
  textfield_password.setVisible(false);
  button_login.setVisible(false);
  
  label_loggedin = control_tabs.addTextlabel("label_loggedin")
  .setText("Welcome " + user.getType() + " " + user
  .getNameOfUser()).setPosition(400, 200)
  .setColorValue(0xff000000);
  
  title = user.getNameOfUser().toUpperCase();
  label_title.setText(title);
  
}
/*
*  check credentials 
*/
public void login()
{

  if(textfield_username.getText().equals(user.getUsername()))
  {
    if(textfield_password.getText().equals(user.getPassword()))
    {
      println("logged in");
      user.setLoggedIn(true);
    }
    else
    {
      println("bad password");
    }
  }
  
  else
  {
    println("bad username");
  }
}
