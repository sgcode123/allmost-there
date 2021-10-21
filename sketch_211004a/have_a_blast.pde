class Blast extends GameObject {

  PVector direction;
  int timer;

  float vx, vy;
  Blast(float x, float y) {
    size = 30;
    timer = 25;
    lives = 1;
    loc = new PVector(x, y);
    //velocity.setMag(10);
    vx = random(-5, 5);
    vy = random(-5, 5);
    velocity = new PVector(vx, vy);
    velocity.setMag(5);
  }


  void show() {
    fill(255);
    circle( loc.x, loc.y, 5);
  }

  void act() {
    super.act();
   // myUFO.loc.x = myUFO.loc.x + vx;
   // myUFO.loc.y = myUFO.loc.y + vy;
  
  timer --;
    if (timer == 0) {
      lives = 0;
    }
  }
}
