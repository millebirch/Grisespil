class Food{
float xF,yF,w,h;{ 

 xF = random(width-200) + 100;
  yF = 30;
  w = 30;
  h = 30;

}

  //constructor
  void display(){
 
 
   rect(xF,yF,w,h);
 
 }

void fall(){
yF = yF + 5; 
}

void reset(){
if (yF > 950){
xF = random(width-200) + 100;
yF = 0;

}
}
}
