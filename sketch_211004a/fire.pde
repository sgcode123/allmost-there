class Fire extends GameObject{
  PVector nudge;
int t;
int points;
Fire(){
  lives = 1;
  size=int(random(5,12));
  t= int(random(200,255));
  loc = new PVector(myShip.loc.x , myShip.loc.y);
    velocity= myShip. direction.copy();
    nudge =myShip. direction.copy();
    nudge.rotate(PI);
    nudge.setMag(10);
    loc.add(nudge);
    
    velocity.rotate(PI+random(-0.5,0.5));
    velocity.setMag(3);
}


void show(){
  noStroke();
 // rectMode(CENTER);
  //if(points == 100){
  //fill((random(0,255)),(random(0,255)),(random(0,255)),t);
  //}
  fill(0,(random(0,255)),0,t);
  //square(loc.x,loc.y,size);
  circle(loc.x,loc.y,size);
}
void act(){
  super.act();
  t = t -10;
  if(t <= 0) lives = 0;
}
}
