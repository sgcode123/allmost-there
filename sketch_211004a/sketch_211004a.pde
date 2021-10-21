int mode;
int i;

final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

boolean upkey,downkey,leftkey,rightkey,spacekey;
boolean win, lose, crazy;
int score;
int timer2,timer3;
Ship myShip;
UFO myUFO;
ArrayList<GameObject> myObject;




void setup()  {
  size(800,600);
   //mode = INTRO;
   mode = INTRO;
  imageMode(CENTER);
 //myShip = new Ship();
  // myUFO = new UFO();
  myObject = new ArrayList<GameObject>();
 // myObject.add(myShip);
 // myObject.add(new Asteroid());
// myObject.add(new Asteroid());
// myObject.add(new Asteroid());
//  myObject.add(myUFO);



  
  numberOFframes=8;
  gif= new PImage[numberOFframes];
  int i=0;
  while ( i < numberOFframes  ){
      gif[i]= loadImage("frame_"+i+"_delay-1s.gif");
    i= i +1;
  }

}





void draw(){
  
     if(mode == INTRO){
    intro();
  }else if (mode == GAME){
    game();
  }else if(mode == PAUSE){
    pause();
  }else if(mode == GAMEOVER){
    gameover();
  }else {
    println("Error: Mode = " + mode);
}

}
