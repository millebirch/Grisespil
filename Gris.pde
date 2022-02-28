class Gris{
 //properties
float x, y, w, h;
float speedX, speedY, maxSpeed;
//constructor
Gris(){
  x = width/2; 

  w=32;
  h=32;
  // hastigheden som spiller kan bevæge sig med 
  maxSpeed = 10;
  speedX = 0;
  speedY = 0;
}
 
//methods
void update(){
//horizontal bevægelse 
  if (left){
   speedY = 0;
   speedX = -maxSpeed;

  }
 if (right){
 speedY = 0;
 speedX = maxSpeed;
 
 
 }
  if ((!left && !right) || (left && right) ){
  speedX = 0; 
  }
checkBounds();
//dette updatere posionen 
x += speedX;
y += speedY;

}
void checkBounds(){
if (x > width){x = -w;}
if (x < -w){x = width;}
}
void display(){
rect(x,900,w,h);

}
}
