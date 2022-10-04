Die dice1;
Die dice2;
Die dice3;
Die dice4;
Die dice5;
Die dice6;
Die dice7;
Die dice8;
Die dice9;
int totalRoll = 0;
void setup(){
  noLoop();
  size(500, 600);
}

void draw(){
  background(#368122);
  /*for(int y = 50; y <= 500; y += 150){
    for(int x = 50; x <= 500; x += 150){
      dice = new Die(x, y);
    }
  }*/
  dice1 = new Die(50, 50);
  dice2 = new Die(50, 200);
  dice3 = new Die(50, 350);
  dice4 = new Die(200, 50);
  dice5 = new Die(200, 200);
  dice6 = new Die(200, 350);
  dice7 = new Die(350, 50);
  dice8 = new Die(350, 200);
  dice9 = new Die(350, 350);
  dice1.roll();
  dice1.show();
  dice2.roll();
  dice2.show();
  dice3.roll();
  dice3.show();
  dice4.roll();
  dice4.show();
  dice5.roll();
  dice5.show();
  dice6.roll();
  dice6.show();
  dice7.roll();
  dice7.show();
  dice8.roll();
  dice8.show();
  dice9.roll();
  dice9.show();
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
    roll = (int)(Math.random()*7+1);
    totalRoll = totalRoll + roll;
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








