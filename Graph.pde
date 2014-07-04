/*
*  Harry Anderson
*  w13171575
*  Final Year Project
*  Physiotheraoy System
*  Graph
*  Creates a graph given the coordinates
*  and draws the graoh to the page
*/

class Graph
{
  int x;
  int y;
  ArrayList<PVector> points = new ArrayList();
  int number = 0;
  
  /*
  *  set where the graph will be displayed
  */
  public void setPosition(int x, int y)
  {
    this.x = x+10;
    this.y = y;
    
  }
  /*
  *  set the coordinates of the graph
  */
  public void setPoints(int n, ArrayList grades)
  {
    number = n;
    int length = 450 / (number); //  devide the total length to get the distnace for each point
    
    for(int i = 0; i < number; i++)
    {
       PVector point;
       int positionY = 0;
       int positionX = 0;
       
       if(grades.get(i).equals("Trace"))
       {
         positionY = 40;
       }
       else if(grades.get(i).equals("Poor"))
       {
         positionY = 80;
       }
       else if(grades.get(i).equals("Fair"))
       {
         positionY = 120;
       }
       else if(grades.get(i).equals("Good"))
       {
         positionY = 160;
       }
       else if(grades.get(i).equals("Normal"))
       {
         positionY = 200;
       }
   
       positionX = x + (80 +  (i* length));
       point = new PVector( positionX  ,((y + 250) - positionY));
       points.add(point);
      
    }
  }
  /*
  *  draw the graph and its points
  */
  public void drawGraph()
  {
    strokeWeight(1);
    rect(x-10, y, x + 160, y + 100);
    strokeWeight(5);
    line(x + 50, y + 50, x + 50, y + 250);
    line(x + 50, y + 250, x + 490, y + 250);
    fill(0);
    textSize(15);
    text("Normal", x, y + 53);
    text("Good", x+10, y + 93);
    text("Fair", x+19, y + 133);
    text("Poor", x+14, y + 173);
    text("Trace", x+ 9, y + 213);
    text("Zero", x+14, y + 253);
    
    strokeWeight(0);
    fill(255, 0, 0);
    
    for(int j = 0; j < number; j++)
    {
      if(j < number - 1)
      {
        strokeWeight(2);
        stroke(0, 0, 255);
        line(points.get(j).x, points.get(j).y, points.get(j+1).x, points.get(j+1).y);
        stroke(0, 0, 0);
      }
      strokeWeight(0);
      fill(255, 0, 0);
      ellipse(points.get(j).x, points.get(j).y, 5, 5);
    }
    fill(255, 255, 255);
    
  }
  /*
  *  work out whether the most recent was an improvement
  */
  public String improved()
  {
    if(number > 1)  //  if there is only 1 or zero points then not enough data
    {
      if(points.get(number - 1).y < points.get(number - 2).y)
      {
        return "Yes";
      }
      else
      {
        return "No";
      }
    }
    else
    {
      return "Not Enough Data";
    }
  }
}
