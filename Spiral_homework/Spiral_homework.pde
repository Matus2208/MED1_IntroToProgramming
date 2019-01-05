float Rcol = 255;
float wy = 10;
float wx = 10;
float edist = 0.2;


float theta = 0;
float r;
float x, y;
float clr;
float noiseScale = noise(r)*10;



void setup() {
  size(800,800);
}

void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);
  frameRate(600);
  translate(width/2, height/2); 
  fill(0,0,random(0,255));
  float a = (2*PI)/1000;
  {
    x = r*cos(theta*a);
    y = r*sin(theta*a);
    ellipse(x, y,noise(r)*10, noise(r)*10);      //discovered that if I wanted to get rid of this and implement a non-magic number instead, 
    r += edist;                                  // the outcome was different
    theta += 4;
  }
  
}
