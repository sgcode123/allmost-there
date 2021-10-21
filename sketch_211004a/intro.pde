void intro(){
  background(0);
  textSize(100);
  text("Asteroids",200,300);
   fill(255);
//   noFill();
   rect(290, 380, 270, 100);
}

void introClicks() {
  if (mouseX > 290 && mouseX< 560  && mouseY> 380 && mouseY< 480)
   timer2 = 0;
    mode = GAME;
     myObject = new ArrayList<GameObject>();
   myShip = new Ship();
  myUFO = new UFO();
   score= 21;
  myObject.add(myShip);
  myObject.add(new Asteroid());
 myObject.add(new Asteroid());
 myObject.add(new Asteroid());
 myObject.add(myUFO);

}
//review mode fram work
