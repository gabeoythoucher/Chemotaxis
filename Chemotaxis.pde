class Bacteria    
 {     
   int X,Y;
   Bacteria(){
     X = 25;
     Y = 25;
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
     ellipse(X,Y,30,30);
   }
   //lots of java!   
 }//end bacteria class   
 
 Bacteria bob;
 int x=500;
 int y = 500;
 int ys = 0;
 int xs = 0;
 PVector v1 = new PVector(500,500);
 boolean[] press = new boolean[4];
 //declare bacteria variables here   
 void setup()   
 {     
   size(1000,1000);
   bob = new Bacteria();
   for(int i = 0;i<=4;i++){
     press[i]=false;
   }
   //initialize bacteria variables here   
 }   
 void draw()
 {    
   background(0);
     if (key == 'w'){
       press[0]=true;
     }
     if (key == 'a'){
       press[1]=true;
     }
     if (key == 's'){
       press[2]=true;
     }
     if (key == 'd'){
       press[3]=true;
     }

   //key presses
   fill(255,0,0);
   ellipse(v1.x,v1.y,40,40);
   bob.move(v1.x,v1.y);
   fill(255);
   bob.show();
   //move and show the bacteria   
 }  
   
