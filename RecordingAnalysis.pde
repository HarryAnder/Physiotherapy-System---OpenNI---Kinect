/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  RecordingAnalysis holds all the
*  analysis about a recording (grade score)
*/

class RecordingAnalysis
{
  private String exerciseGrade, resistence;
  private int score, good1st, good2nd, ok1st, ok2nd, bad1st, bad2nd;
   
  
  private void setExerciseGrade(String g)
  {
    exerciseGrade = g;
    
  }
  private String getExerciseGrade()
  {
    return exerciseGrade;
  }
  private void setResistence(boolean r)
  {
    if(r)
    {
      resistence  = "Yes";
    }
    else
    {
      resistence  = "No";
    }
    
  }
  private String getResistence()
  {
    return resistence;
  }
  
      private void setScore(int s)
  {
    score = s;
    
  }
  private int getScore()
  {
    return score;
  }
  
  private void setGood1st(int g)
  {
    good1st = g;
    
  }
  private int getGood1st()
  {
    return good1st;
  }
  private void setGood2nd(int g)
  {
    good2nd = g;
    
  }
  private int getGood2nd()
  {
    return good2nd;
  }
  
  
  private void setOk1st(int o)
  {
    ok1st = o;
    
  }
  private int getOk1st()
  {
    return ok1st;
  }
  private void setOk2nd(int o)
  {
    ok2nd = o;
    
  }
  private int getOk2nd()
  {
    return ok2nd;
  }
  
  private void setBad1st(int b)
  {
    bad1st = b;
    
  }
  private int getBad1st()
  {
    return bad1st;
  }
  private void setBad2nd(int b)
  {
    bad2nd = b;
    
  }
  private int getBad2nd()
  {
    return bad2nd;
  }
  
}
