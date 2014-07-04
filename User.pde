/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  User holds all the user information
*  username password
*/
class User
{
  private String username, password, name, type;
  private boolean loggedIn = false;
  
  public void User()
  {
  }

  private void setUsername(String u)
  {
    username = u;
  }
  private String getUsername()
  {
    return username;
  }
  private void setPassword(String p)
  {
    password = p;
  }
  private String getPassword()
  {
    return password;
  }
  private void setNameOfUser(String n)
  {
    name = n;
    
  }
  private String getNameOfUser()
  {
    return name;
  }
  private void setType(String t)
  {
    type = t;
  }
  private String getType()
  {
    return type;
  }
  private void setLoggedIn(boolean l)
  {
    loggedIn = l;
  }
  private boolean getLoggedIn()
  {
    return loggedIn;
  }
  

}
