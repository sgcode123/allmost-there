void keyPressed() {
  if(keyCode == UP) upkey = true;
    if(keyCode == DOWN) downkey = true;
     if(keyCode == LEFT) leftkey = true;
       if(keyCode == RIGHT) rightkey = true;
            if(keyCode == ' ') spacekey = true;
  
}
void keyReleased() {
  if(keyCode == UP) upkey = false;
    if(keyCode == DOWN) downkey = false;
     if(keyCode == LEFT) leftkey = false;
       if(keyCode == RIGHT) rightkey = false;
            if(keyCode == ' ') spacekey = false;
  
}

void mouseReleased() {
  
      if(mode == INTRO){
    introClicks();
  }else if (mode == GAME){
    gameClicks();
  }else if(mode == PAUSE){
    pauseClicks();
  }else if(mode == GAMEOVER){
    gameoverClicks();
  }else {
    println("Error: Mode = " + mode);
} 
  
}
