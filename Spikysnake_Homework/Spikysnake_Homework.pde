int[] x = new int[100]; 
int[] y = new int[100]; 

    // 2 set arrays for both axis'

void setup() {

  size(800, 600);
}


void draw() {
  background(#636363);
  //this loop shifts, since the indexes are getting decreased
  for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  } 
//makes sure it starts from the mousel
  x[0] = mouseX;
  y[0] = mouseY;
  
for (int i =0; i < x.length; i++){
   fill(255);
    triangle(x[i],y[i], 20,20,20,20);
    //this makes the triangles look super spiky, because the triangle is super narrow.
  }
}
