void game() {
  textSize(200); 




win = false;
lose = false;
  background(0); 
  int i = 0;
  

  while (i< myObject.size()) {
    GameObject myObj = myObject.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives ==0) {
      myObject.remove(i);
    } else {
      i++;
    }
    fill(255);
    if (timer2 > 1000){
        fill(#08CE1D);
    }
    if (timer2 > 1000 && crazy ==true){
      fill(#FF0835);
    }
     if (timer2 < 1000){
        fill(255);
    }
    
     if (score == 0) {
         win = true;
            mode = GAMEOVER;
     }
        if (score < 0) {
        win = true;
            mode = GAMEOVER;
            win = true;
         }
    
     rect(400, 10, 50, 40);
     fill(255);
  rect(10, 10, 50, 40);
  }
 rect(10, 10, 50, 40);  
}

 

void gameClicks() {
  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50){
 timer2 = 0;
    mode = PAUSE;
  }
      if (mouseX > 400 && mouseX< 450  && mouseY> 10 && mouseY< 50){

   crazy= true;
      }
}
