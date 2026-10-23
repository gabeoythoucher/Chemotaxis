class Bacteria 
{     
   int X,Y;
   Bacteria(){
     X = 1000;
     Y = 1000;
   }
   void move(double fx, double fy){
     if(X>fx){
       X+= ((int)(Math.random()*5)-4);
     }else if(X<fx){
       X+= ((int)(Math.random()*5));
     }
     if(Y>fy){
       Y+= ((int)(Math.random()*5)-4);
     }else if(Y<fy){
       Y+= ((int)(Math.random()*5));
     }
   }//end move
   void show(){
     fill(0,255,0);
     ellipse(X,Y,30,30);
   }
   //lots of java!   
 }//end bacteria class   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
 Bacteria[] bob = new Bacteria[500];
 int x=500;
 int y = 500;
 int bact = 0;
 //declare bacteria variables here   
 void setup(){   
   textAlign(CENTER, CENTER);
   size(1000,1000);
   for(int i = 0;i<10;i++){
     bob[i] = new Bacteria();
     bact++;
   }
   //initialize bacteria variables here   
 }   
  void draw()
 {    
   background(0);
   
   // Draw Player
   fill(255, 0, 0);
   ellipse(mouseX, mouseY, 40, 40);
   
   if (frameCount % 30 == 0 && bact < bob.length) {
     bob[bact] = new Bacteria();
     bact++;
   }
   
   // Process all currently active bacteria
   for (int i = 0; i < bact; i++) {
     bob[i].move(mouseX, mouseY);
     bob[i].show();
     float distance = dist(bob[i].X, bob[i].Y, mouseX, mouseY);
     if (distance < 35) {
       fill(0, 255, 0);
       textSize(48);
       text("You were unable to stay clear of covid", width / 2, height / 2);
       noLoop(); 
     }
   }
 }
