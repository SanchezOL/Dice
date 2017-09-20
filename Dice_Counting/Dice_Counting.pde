void setup()
{
  size(500, 300);
  textAlign(CENTER);
  noLoop();
}
int rollNumTotal =  0;

void draw()
{
  { 
    for (int y = 50; y < 300; y += 50)
    {
      for (int x = 50; x < 500; x += 50)
      {
        Die Bob = new Die(x, y);
        Bob.show();
      }
    }
    text(rollNumTotal + " total", 300, 290);
  }
}
class Die
{
  boolean heads; 
  int myX, myY;
  int rollNum;
  Die(int x, int y) 
  {
    rollNum = (int)(Math.random() * 6) + 1;
    myX = x;
    myY = y;
  
}
void show()
{
  noStroke();
  fill(255);
  rect(myX - 22, myY - 25, 40, 40);
  fill(0);
  text(rollNum, myX, myY);
  rollNumTotal = rollNum + rollNumTotal;
}
}