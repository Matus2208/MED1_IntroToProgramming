Flower flower;

void setup()
{
  size(600,400);
  background(0,230,0);
  
  int r= 60;
  int petals=6;
  float x=width/2;
  float y=height/2;
  int colour=#FFA000;
  
  flower = new Flower(r,petals,x,y,colour);

}

void draw(){
  background(150,50,0);
  flower.display();
  flower.flip();
  flower.fall();

}
