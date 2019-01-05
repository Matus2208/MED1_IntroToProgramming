class Flower {

  float YSpeed=5; 
  int Color;  //var for a colour
  float r;       // radius of the petal
  int n_petals;  // n. of petals 
  float x;       // center pos
  float y;       // center pos

  Flower(float _r, int _n_petals, float _x, float _y, int _Clr) {
    r=_r;
    n_petals = _n_petals;
    x=_x;
    y=_y;
    Color=_Clr;
}


  void display (){

    float ballX;
    float ballY;

   
    fill(Color);
    for (float i=0; i<PI*2; i+=2*PI/n_petals){
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    
    fill(#636363);
    ellipse(x, y, r*1.2, r*1.2);
  }

  void fall (){
    y=y+YSpeed;
  }

  void flip (){ 
    if (y+r*1.2 > height || y-r*1.2 < 0){
      YSpeed=-YSpeed;
    }
  }
}
