class Ennemi{

PImage[] skin = new PImage[7];     // all the skin are stocked here

int indexSkin;  // the current skin. But don't worry, you're a Chamaleon

float x, y;   // our position
float speedx;
float speedy;
float padding;
int life;

Ennemi()                            // In fact, Ennemi is the other team
                                    // We are just persecuted stuff
                                    
{
  
life = round (random(3));  
speedx = 6;
speedy = 7;
padding  = width/10;
x= random(width);  
y=random(-2*height);
  
for (int i=0; i<skin.length ; i++)
{
skin[i]= loadImage ("enn"+i+".png");//loadImage ("enn"+i+".jpg");enn0.png
}
indexSkin = ceil(random(skin.length-1));
}


void display(){

if (y>0){imageMode(CENTER)  ;image(skin[indexSkin], x, y); print("  I'm Beautiful  ");}  } 


void step(){ 
  
  print(" y " +y);

int choice=int(random(4));
if(choice==0){x+=speedx;}
else if(choice==1){x-=0;}
else if(choice==2){y+=speedy;}
else{y+=speedy*1.25;}

if (x<0){x=width-padding;}  if (x>width+padding){x=10;}  
if (y>height+10){y=-random(2*height);
speedx=-speedx;
indexSkin = ceil(random(skin.length-1));
}

}

 }
