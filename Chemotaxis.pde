Bacteria[] colony;

 void setup()
 {
   background(0);
   frameRate(30);
   size(700, 700);
   colony = new Bacteria[30];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }
 void mousePressed()
 {
   //redraw();
   System.out.println("Mouse Clicked");
 }
 void draw()   
 {    
   fill(0, 0, 0, 20);
   rect(0, 0, 700, 700);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].walk();
   }
 }  
 class Bacteria    
 {
   int myX, myY, XY;
   Bacteria()
   {
     myX = myY = 350;
     XY = 1;
   }
 	 void walk()
   {
    if (XY == 1) {
      myX = myX + ((int)(Math.random()*3) - 1)*20;
      XY = 2;
    }
    if (XY == 2) {
      myY = myY + ((int)(Math.random()*3) - 1)*20;
      XY = 1;
    }
   }
   void show()
   {
     strokeWeight(6);
     noFill();
     stroke(10, 170, 240);
     ellipse(myX, myY, 15, 15);
   }
 }    