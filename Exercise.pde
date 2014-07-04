/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Exercise stores all the
*  information needed to create
*  and exercise
*/


class Exercise
{
  private String name, type;
  private int time, id, patientId;
  
  private void setNameOfExercise(String n)
  {
    name = n;
    
  }
  private String getNameOfExercise()
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
  
    private void setTime(int ti)
  {
    time = ti;
    
  }
  private int getTime()
  {
    return time;
  }
  
      private void setId(int i)
  {
    id = i;
    
  }
  private int getId()
  {
    return id;
  }
        private void setPatientId(int i)
  {
    patientId = i;
    
  }
  private int getPatientId()
  {
    return patientId;
  }
}
