class UFO extends GameObject{
    int shotTimer,threshold;
   int shake;
  
  UFO (){
     shotTimer =0;
    threshold=60;
    shake = 0;
    lives = 3;
    loc = new PVector (random(0,width), random(0,height));
    velocity= new PVector(0,1);
    velocity.rotate(random(0,TWO_PI));
    
    size =100;
  }
  
  UFO(int s, float x,float y){
    lives = 1;
    loc = new PVector(x,y);
       velocity= new PVector(0,1);
     velocity.rotate(random(0,TWO_PI));
     size = s;
  }
  
  
  void show(){
    noFill();
    stroke(255);
   
 ellipse(loc.x+shake,loc.y+shake,100,50);
  fill(0);
ellipse(loc.x+shake,loc.y-20+shake,50,35);

  }
  void act(){
       shotTimer++;
 
     //  myObject.add(new UFOBullet());
       
      if( shotTimer >= threshold){
        
       myObject.add(new UFOBullet());
       shotTimer =0;
       
     }
     
         

  
   
    super.act();
    
    int i = 0;
    while(i < myObject.size()){
        GameObject myObj = myObject.get(i);
        if(myObj instanceof Bullet ) {
          if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y)<= size/2 +myObj.size){
            myObj.lives = myObj.lives  - 1;
            lives = lives - 1;
            shake = shake - 30;
if (lives == 0){
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

myObject.add(new UFO());
} 
        
       
           
          
       
          
          }
        }
        
      i ++;
    }
   
  }
}
