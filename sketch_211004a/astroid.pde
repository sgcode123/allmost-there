class Asteroid extends GameObject {

  Asteroid () {
    score = 21;
    lives = 1;
    timer3= 600;
    loc = new PVector (random(0, width), random(0, height));
    velocity= new PVector(0, 1);
    velocity.rotate(random(0, TWO_PI));

    size =100;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector(x, y);
    velocity= new PVector(0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = s;
  }


  void show() {
    timer3 = timer3 +1;
    noFill();
    stroke(255);
    ellipse(loc.x, loc.y, size, size);
  }


  void act() {
    super.act();
 
   
 
   
if (score == 0) {
  
            mode = GAMEOVER;
            win = true;
         }
    int i = 0;
    
    while (i < myObject.size()) {
      GameObject myObj = myObject.get(i);
      if (myObj instanceof Bullet ) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size/2 +myObj.size) {
       if (score == 0) {
        win = true;
            mode = GAMEOVER;
            win = true;
         }
       if (score < 0) {
        win = true;
            mode = GAMEOVER;
            win = true;
         }
         
          myObj.lives = 0;
          lives =0;

 score = score - 1;
   print (score +" ?");
          if (size > 25) {
            
       
          //print (lives);
         
            myObject.add(new Asteroid(size/2, loc.x, loc.y));
            myObject.add(new Asteroid(size/2, loc.x, loc.y));
           
          }


          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          myObject.add(new Blast(loc.x, loc.y));
          
        }
      }



      if (myObj instanceof Ship) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size/2 +myObj.size) {
          
         if (timer3 > 600){
          myObj.lives =   myObj.lives - 1;
         
     print (score +" ?");
    if (score == 0) {
         win = true;
            mode = GAMEOVER;
              
        if (score < 0) {
        win = true;
            mode = GAMEOVER;
            win = true;
         }
    
            win = true;
            
         }
        score = score - 1;

          if (size > 25) {
            lives = lives - 1;
         
          //print (lives);
      
        
            myObject.add(new Asteroid(size/2, loc.x, loc.y));
            myObject.add(new Asteroid(size/2, loc.x, loc.y));
          
       
          }
          timer3 = 0;
         }
        }
      }
       
      i ++;
    }
  }
}
