

class Player {
  int xpos1;
  int r1;
  int ypos1;
  int playercolor;



  Player(int temp_xpos1, int temp_ypos1, int temp_r1, int temp_playercolor) {
    xpos1 = temp_xpos1;
    r1 = temp_r1;
    ypos1 = temp_ypos1;
    playercolor = temp_playercolor;
  }

  void display(boolean spawn) {
    if (spawn)
    {
      pushMatrix();
      fill(playercolor);
      ellipse(xpos1, ypos1, r1, r1);
      popMatrix();
    }
  }
}
