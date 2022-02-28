int points = 0;
int liv = 5; 
boolean left, right;
String s="";
Gris G;
bomb b;
Food F;
PImage background;
//dette er bagrunden og alt hvad der er der 
void setup() {
 
 // background = loadImage();
  fullScreen();
// her adder vi objekterne 
  G = new Gris();
  b = new bomb();
  F = new Food();

  left = false;
  right = false;
}


void draw() {
 clear();
 textMode(CENTER);
 rectMode(CENTER);
  //her er bagrunden der skal insettes et billede 
  background(100, 50, 60);
  //dette er platformen som vores kareter skal bevæge sig på 
  rect(0, 1100, 10000, 400);
 
  fill(0);
//til at se text der viser tasters nummer
  textSize(100);
 // text(s, 100, 100);

  G.update();
  G.display();
  b.display();
  b. update(); 
  b. fall();
  b. reset();
   F.display();
   F.fall();
   F.reset();
 //hit detektion
 text(liv,50,80);
 //hit detection 
  float afstand = dist(G.x,900,b.x,b.y);
  if(afstand < 20){
  text( "boom",G.x,900);
b.x = random(width-200) + 100;
b.y = 0;
liv = liv - 1;
}
text(points,1800,80);
float afstand2 = dist(G.x,900,F.xF,F.yF);
  if (afstand2 < 20){
  text("+1",G.x,900);
  F.xF = random(width-200) + 100; 
 F.yF = 0;
 points = points + 1; 
}
if(liv == 0){
text("GAME OVER",width/2,height/2);


}
}

void keyPressed() {
  s= "key" + keyCode; 
  switch(keyCode) {
  case 37:// pil til vænstre 
    left = true;
    break;

  case 39: // pil til højre 
    right = true; 
    break;
  }


}


void keyReleased() {
  s= "key" + keyCode; 
  switch(keyCode) {
  case 37:// pil til vænstre 
    left = false;
    break;


  case 39: // pil til højre 
    right = false; 
    break;
  }
}
