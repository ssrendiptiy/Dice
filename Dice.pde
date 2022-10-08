Die dice;
int totalRoll = 0;
void setup(){
  noLoop();
  size(500, 600);
}

void draw(){
  background(#368122);
  for(int y = 50; y <= 400; y += 150){
    for(int x = 50; x <= 500; x += 150){
      Die dice = new Die(x, y);
      dice.roll();
      dice.show();
    }
   }
  textSize(75);
  text("Total: " + totalRoll, 110, 550);
}

void mousePressed(){
  totalRoll = 0;
  redraw();
}

class Die{
  int myX, myY;
  int roll = 0;
  Die(int x, int y){ //the one that u use to draw
    myX = x;
    myY = y;
  }
  void roll(){
    roll = (int)(Math.random()*6+1);
    totalRoll = totalRoll + roll;
    System.out.println(roll);
  }
  void show(){
    fill(#FFFFFF);
    rect(myX, myY, 100, 100);
    fill(#000000);
    if(roll == 1){
      ellipse(myX+50, myY+50, 20, 20);
    } else if(roll == 2){
      for(int i=0; i <= 50; i+=50){
        ellipse(myX+50, myY+25+i, 20, 20);
      }
    } else if(roll == 3){
      for(int i=0; i < roll*30 && i < 90; i+=30){
        ellipse(myX+50, myY+20+i, 20, 20);
      }
    } else if(roll == 4){
      for(int i=0; i <= 50; i+=50){
        ellipse(myX+25, myY+25+i, 20, 20);
        ellipse(myX+75, myY+25+i, 20, 20);
      }
    } else if(roll == 5){
      ellipse(myX+50, myY+50, 20, 20);
      for(int i=0; i <= 50; i+=50){
        ellipse(myX+25, myY+25+i, 20, 20);
        ellipse(myX+75, myY+25+i, 20, 20);
      }
    } else {
      for(int i=0; i < roll*30 && i < 90; i+=30){
        ellipse(myX+25, myY+20+i, 20, 20);
        ellipse(myX+75, myY+20+i, 20,20);
      }
    }
  }
}


