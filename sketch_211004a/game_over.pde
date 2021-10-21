

void gameover(){

background(0);
        
  if (win == true){
    text("you win", 200,200);
  }
  if (lose == true){
    text("you lose", 200,200);
  }
 rect(500, 380, 270, 100);
 rect(100, 380, 270, 100);
  }
    // rect(290, 380, 270, 100);

void  gameoverClicks() {
   // if (mouseX > 290 && mouseX< 560  && mouseY> 380 && mouseY< 480)
    if (mouseX > 500 && mouseX< 770  && mouseY> 380 && mouseY< 480){
      timer2 = 0;
       mode = GAME;
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
 if (mouseX > 100 && mouseX< 370  && mouseY> 380 && mouseY< 480){
    mode = INTRO;
       
 }
}
