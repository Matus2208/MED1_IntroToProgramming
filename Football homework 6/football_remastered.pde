Player [] Players = new Player [22];

int value = 0;
int xPos;                      
int speed=1;                   
int xDir=1;                    
int score=0;                   
int lives=5;                   
boolean lost=false; 

void setup() {
  size(600, 850);
  smooth();
  xPos=width/2;
  textSize(13);
  frameRate(100);
  Players[0]=new Player((int)random(200,400),(int)random(800,850),50, #FF0000); 
  Players[1]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[2]=new Player((int)random(200,400),(int)random(0,50),50, #0000FF);
  Players[3]=new Player((int)random(0,150),(int)random(75,200),50, #0000FF);
  Players[4]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000); 
  Players[5]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[6]=new Player((int)random(200,400),(int)random(75,200),50, #0000FF);
  Players[7]=new Player((int)random(400,600),(int)random(75,200),50, #0000FF);
  Players[8]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000); 
  Players[9]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[10]=new Player((int)random(200,400),(int)random(200,250),50, #0000FF);
  Players[11]=new Player((int)random(0,150),(int)random(250,300),50, #0000FF);
  Players[12]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[13]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[14]=new Player((int)random(0,150),(int)random(300,375),50, #0000FF);
  Players[15]=new Player((int)random(150,350),(int)random(300,375),50, #0000FF);
  Players[16]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[17]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[18]=new Player((int)random(200,400),(int)random(400,450),50, #0000FF);
  Players[19]=new Player((int)random(400,600),(int)random(400,450),50, #0000FF);
  Players[20]=new Player((int)random(0,width),(int)random(height/2,height),50, #FF0000);
  Players[21]=new Player((int)random(0,200),(int)random(400,450),50, #0000FF);
}


void draw() {
  background(#069B31);
  stroke(255);                               
  strokeWeight(3);
  line(100, 0, 100, 150);
  stroke(255);
  strokeWeight(3);
  line(100, 150, 500, 150);
  stroke(255);
  strokeWeight(3);
  line(500, 150, 500, 0);
  noFill();
  arc(300, 150, 150, 150, 0, PI);
  fill(255);
  ellipse(302, 97, 7, 7);
  stroke(255);
  strokeWeight(3);
  line(200, 0, 200, 50);
  stroke(255);
  strokeWeight(3);
  line(200, 50, 400, 50);
  stroke(255);
  strokeWeight(3);
  line(400, 50, 400, 0);
  stroke(255);
  strokeWeight(7);
  line(250, 0, 350, 0);



  stroke(255);                                 //Lower goal area
  strokeWeight(3);
  line(100, 850, 100, 700);
  stroke(255);
  strokeWeight(3);
  line(100, 700, 500, 700);
  stroke(255);
  strokeWeight(3);
  line(500, 700, 500, 850);
  noFill();
  arc(300, 700, 150, 150, PI, TWO_PI);
  fill(255);
  ellipse(302, 747, 7, 7);
  stroke(255);
  strokeWeight(3);
  line(200, 850, 200, 800);
  stroke(255);
  strokeWeight(3);
  line(200, 800, 400, 800);
  stroke(255);
  strokeWeight(3);
  line(400, 800, 400, 850);
  stroke(255);
  strokeWeight(7);
  line(250, 850, 350, 850);


  stroke(255);                                   //Center line
  strokeWeight(3);
  line(0, 425, 600, 425);

  noFill();                                      //Center Circle
  arc(300, 425, 150, 150, 0, PI);
  noFill();
  arc(300, 425, 150, 150, PI, TWO_PI);

  stroke(255);                                  //Corners
  arc(0, 0, 50, 50, 0, HALF_PI, PIE);
  stroke(255);
  arc(600, 0, 50, 50, HALF_PI, PI, PIE);
  stroke(255);
  arc(600, 850, 50, 50, PI, PI+HALF_PI, PIE);
  stroke(255);
  arc(0, 850, 50, 50, PI+HALF_PI, TWO_PI, PIE);


  fill(255);                                     //Center dot
  ellipse(300, 425, 20, 20);


  ellipse(xPos, height/2, 40, 40);                 //Draw the ball
  xPos=xPos+(speed*xDir);                        //update the ball's position 
  if (xPos > width-20 || xPos<20)                //Did the ball hit the side?
  {
    xDir=-xDir;                                  //If it did reverse the direction
  }
  fill(0);
  text("score = "+score, 10, 10);                  //Print the score on the screen
  text("lives = "+lives, width-80, 10);            //Print remaining lives
  if (lives<=0)                                  //Check to see lost
  {
    textSize(20);
    text("Click to Restart", 125, 100);
    noLoop();                                    //Stop looping
    lost=true;
    textSize(13);
  }  
  for(int i = 0; i<Players.length;i++)
    Players[i].display (true);
    
  fill(#000000);
  ellipse(mouseX,mouseY,50,50);
  
  println(mouseX,mouseY);
}



void mousePressed() {    
                                                  //Runs whenever the mouse is pressed
  if ((mouseX > xPos - 20 && mouseX< xPos+20) && (mouseY > height/2 -20 && mouseY < height/2 +20))
  {
    score=score+speed;                           //Increase the speed
      speed=speed+1;                               //Increase the Score
/*
    if (dist(mouseX, mouseY, xPos, 200)<=20)      
    {
      score=score+speed;                           //Increase the speed
      speed=speed+1;                               //Increase the Score
    } else                                           //We missed
    {
      if (speed<1)                                 //If speed is greater than 1 decrease the speed
      {
        speed=speed-1;
      }
    }
 */ } else {
    lives = lives - 1;
  }
  if (lost==true)                                //Game lost, reset 
  {
    speed=1;                                     //Reset all variables
    lives=5;
    score=0;
    xPos=width/2;
    xDir=1;
    lost=false;
    loop();                                     //Begin looping
  }
}
