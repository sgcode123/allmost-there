int f;
PImage[] gif;
int numberOFframes;

void pause(){
 
  textSize(200); 
  
  fill(0);

  image(gif[f], 400, 300, width, height);
    delay(40);
  f = f + 1;
  if ( f == numberOFframes) f=0;
  rect(10, 10, 50, 40);

}

void pauseClicks() {
  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50)
  
    mode = GAME;


  
}
