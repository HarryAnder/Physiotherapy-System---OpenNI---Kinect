/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Patient, stores all the
*  information about a patient
*/

class Patient
{
  String firstName, surname, dob, id, ailment, notes;
  public void setFirstName(String n)
  {
    firstName = n;
  }
  public String getFirstName()
  {
    return firstName;
  }
  public void setSurname(String n)
  {
    surname = n;
  }
  public String getSurname()
  {
    return surname;
  }
  public void setDob(String d)
  {
    dob = d;
  }
  public String getDob()
  {
    return dob;
  }
  public void setId(String i)
  {
    id = i;
  }
  public String getId()
  {
    return id;
  }
  
  public void setAilment(String a)
  {
    ailment = a;
  }
  public String getAilment()
  {
    return ailment;
  }
  
     public void setNotes(String n)
  {
    notes = n;
  }
  public String getNotes()
  {
    return notes;
  }
}
