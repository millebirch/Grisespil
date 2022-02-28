class bomb { 
float x,y,w,h,vx,vy; 
 //constructor 
 bomb() {
 x = random(width-200) + 100;
 w = 32;
 h = 32;
 vx = 0;
 vy= 0;
 }
void update(){

}

void display(){
fill(1,255,0);
rect(x,y,w,h);
}

void fall() {
y = y+5;



}
void reset(){
if (y > 950){
 x = random(width-200) + 100;
 y = 0;

}

}
}
