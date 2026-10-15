class Bacteria    
 {     
   int X,Y;
   Bacteria(){
     X = 25;
     Y = 25;
   }
   void move(int fx, int fy){
     if(X>fx){
       X+= ((int)(Math.random()*3)-2);
     }else if(X<fx){
       X+= ((int)(Math.random()*3));
     }
     if(Y>fy){
       Y+= ((int)(Math.random()*3)-2);
     }else if(Y<fy){
       Y+= ((int)(Math.random()*3));
     }
   }//end move
   void show(){
     ellipse(X,Y,30,30);
   }
   //lots of java!   
 }//end bacteria class   
 
 Bacteria bob;
 int x=500;
 int y = 500;
 
 
 //declare bacteria variables here   
 void setup()   
 {     
   size(1000,1000);
   bob = new Bacteria();
   //initialize bacteria variables here   
 }   
 void draw()
 {    
   background(0);

     if (key == 'w'){
       y-=2;
     }
     if (key == 'a'){
       x-=2;
     }
     if (key == 's'){
       y+=2;
     }
     if (key == 'd'){
       x+=2;
     }
   //key presses
   fill(255,0,0);
   ellipse(x,y,40,40);
   bob.move(x,y);
   fill(255);
   bob.show();
   //move and show the bacteria   
 }  
   
