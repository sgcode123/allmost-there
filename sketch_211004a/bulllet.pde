class Bullet extends GameObject {

  //  int lives;
  //  PVector loc;
  // PVector velocity;
  PVector direction;
  int timer;

  Bullet() {
    timer = 60;
    lives = 1;
 
    //loc = new PVector(myUFO.loc.x, myUFO.loc.y);
  //  velocity = new PVector(myShip.direction.x, myShip.direction.y);

       
        
        //if(spacekey){
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    // }
    //velocity = new PVector(myShip.loc.x, myShip.loc.y);
      velocity.setMag(10);
    size = 10;
  }


  void show() {

    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, size, size);
  }

  void act() {
    //  loc.add(velocity);

    ///  if (loc.y < -50) loc.y = height+50;
    //  if (loc.y > height +50)loc.y = -50;
    // if(loc.x < -50) loc.x = width+50;
    // if (loc.x > width+50) loc.x = -50;
    super.act();

    timer --;
    if (timer == 0) {
      lives = 0;
    }
  }
}
