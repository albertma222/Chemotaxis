Bacteria[] colony;

 void setup()
 {
   size(500, 500);
   colony = new Bacteria[500];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(205);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].walk();
   }
 }  
 class Bacteria    
 {
   int myX, myY;
   Bacteria()
   {
     myX = myY = 250;
   }
 	 void walk()
   {
    myX = myX + (int)(Math.random()*3) - 1;
    myY = myY + (int)(Math.random()*3) - 1;
   }
   void show()
   {
     fill(0, 205, 255);
     ellipse(myX, myY, 15, 15);
   }
 }    