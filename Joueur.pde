
class Joueur{

PImage skin;     

float x, y;   // our position
float speedx;
float speedy;

Joueur()   

{ 
speedx=8;
speedy=5;
x= width/2;  
y=height-height/8;
skin = loadImage ("joueur.png");
}

void display(){

if (y>0){imageMode(CENTER)  ;image(skin, x, y); print("  I'm Powerful  ");}  } 



}
