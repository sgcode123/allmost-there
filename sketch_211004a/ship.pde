

class Ship extends GameObject {

  //intsance var
  // int lives;
  // PVector loc;
  // PVector velocity;
  PVector direction;
  int shotTimer, threshold,shotTimer2;
  //constructors
  Ship() {
    lives = 10;
    loc =new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    shotTimer =0;
    shotTimer2 = 100;
    threshold=30;
  }



  //behavior
  void show() {
     timer2 = timer2 +1;
     
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(direction.heading());
    noFill();
    if (timer3 < 600){
       fill(#F6FF08);
     }
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);

    popMatrix();
    fill(255);
    textSize(25);
    text ( lives+ "❤", 720, 20);
  }

  void act() {
    //   loc.add(velocity);

    super.act();
    shotTimer++;
    shotTimer2++;
    if (upkey) { 
      velocity.add(direction);
      myObject.add(new Fire());
      myObject.add(new Fire());
      myObject.add(new Fire());
    }
    if (downkey) {
      velocity.sub(direction);
      // myObject.add(new Fire());
    }
    if (leftkey) {

      direction.rotate(-radians(5) );
      myObject.add(new Fire());
      myObject.add(new Fire());
      myObject.add(new Fire());
    }
    if (rightkey) {

      direction.rotate(radians(5) );
      myObject.add(new Fire());
      myObject.add(new Fire());
      myObject.add(new Fire());
    }
   
   

       if (timer2 > 1000 && crazy ==true && shotTimer2 >= timer2) {
         threshold = 5;
          shotTimer2 = shotTimer2 - 1;
           
       } else if(shotTimer2 <= timer2 && crazy == true){
         threshold = 30;
         shotTimer2 = 0;
       }
       
       
    if (spacekey && shotTimer >= threshold) {
      myObject.add(new Bullet());
      shotTimer =0;
    }


    super.act();
    if (lives == 0) {
      mode = GAMEOVER;
      win=false;
      lose= true;
    }
    int i = 0;
    // if (loc.y < -50) loc.y = height+50;
    // if (loc.y > height +50)loc.y = -50;
    //if(loc.x < -50) loc.x = width+50;
    //if (loc.x > width+50) loc.x = -50;
    while (i < myObject.size()) {
      GameObject myObj = myObject.get(i);
      if (myObj instanceof UFOBullet ) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size/2 +myObj.size) {
          myObj.lives =   myObj.lives - 1;

          lives = lives - 1;
          //print (lives);
          if (lives == 0) {
            mode = GAMEOVER;
            lose = true;
          }
         
        }
      }

//while(tela== true){
 //     if (myObj instanceof Asteroid ) {
 //       if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size*2 +myObj.size) {
 //        tela= false;
 //        if(tela ==true && telaplort == ){
//     loc=new PVector(random(0,width), random(0,height));
//   }
  //      }
   //       }
         
//   }
      
      i ++;
    }
  }
}
