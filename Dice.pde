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
  int rollDots = 0;
  noStroke();
  fill(255);
  rect(myX - 22, myY - 25, 40, 40);
  fill(0);
  
  while (rollDots < rollNum && rollDots < 3 ){
  ellipse(myX - 10, myY - 15 + (rollDots*10), 10, 10);
  rollDots += 1;
  }
  while (rollDots < rollNum && rollDots > 2 ) {
  ellipse(myX + 5, myY - 45 + (rollDots*10), 10, 10);
  rollDots += 1;
  }
  
  
  rollNumTotal = rollNum + rollNumTotal;


}
}