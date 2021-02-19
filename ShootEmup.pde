import processing.sound.*;
SoundFile BGmusic;

Ennemi[] ennemi = new Ennemi[5];
Joueur joueur;
float bk; 

Laser[] laser = new Laser[5]; // don't Shoot more than 5 clic/seconde please. 
                                // you need to care about about carpian's tunnal;

void setup(){
  frameRate(5);
    BGmusic = new SoundFile(this, "annoyingsong.wav");
    BGmusic.loop();
  
  
  size(800,800);          //basic stuff
  background(0);
  bk=4;
  
  for (int i=0; i<ennemi.length;i++){    // creating ennemies
  ennemi[i] = new Ennemi();}
  
  joueur = new Joueur();                // Creating you. I'm you're Creator. Respect me.
  
  
};

void keyPressed(){

for (int i = 0; i <laser.length;  i++)
{if (laser[i] == null) { laser[i] = new Laser(); return; }} 


}


void mousePressed(){
 
  stroke(255);
point(mouseX+100,mouseY-175);     // just to give me and idea where to spawn Laser
}
  

void draw(){ 
    frameRate(60);
  noCursor();
    background(bk,bk+random(10),bk+random(40), random(50)); // a bit of random
    
    if (bk>0 || bk< 60)      //BG change a bit
   { bk+=random(-4,4);}
   else{bk=12;}
    
    
      for (int i=0; i<ennemi.length;i++){
  ennemi[i].step();   ennemi[i].display(); }
  
  
  joueur.x=mouseX; joueur.y=mouseY;
  joueur.display();
  
  
   for (int i=0; i<laser.length;i++)
   
  {if (laser[i] != null)
  {
    laser[i].display(); laser[i].step();
   
  //for (int j = 0; j<ennemi.length-1;j++)                                          //Not Working
//
 //  {if (ennemi[j] != null){
  //  if ((abs(laser[i].x-ennemi[j].x))<30 && (abs(laser[i].y-ennemi[j].y)<30 ))  
  //{
 //  ennemi[i].life-=1; laser[i]=null;
 // }
    if (laser[i].y<0){laser[i]=null; }                                               // That's working
   }
   }
   }
  



  
  
