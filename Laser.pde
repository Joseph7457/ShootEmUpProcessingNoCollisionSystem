
class Laser{

PImage skin;     

float x, y;   // our position
float speedx;
float speedy;
float side;

Laser()   

{ 

  //choose side randomly
  float r =random(1);
  side = 100;
  if (r>0.5){side=side;} else {side=-side;}
  
speedy=-10;

x= mouseX+side;
y= mouseY-95;

skin = loadImage ("laser0.png");
}

void display(){

if (y>0){imageMode(CENTER)  ;image(skin, x, y,70,80); print("  I'm Powerful  ");}  } 

void step(){ y+=speedy;}

  
  
}
