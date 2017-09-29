Bacteria[] colony;

 void setup()
 {
   background(0);
   size(700, 700);
   frameRate(60);
   colony = new Bacteria[30];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }
/* void mousePressed()
 {
   redraw();
   System.out.println("Mouse Clicked");
 } */
 void draw()   
 {    
   noStroke();
   fill(255, 0, 0);
   noStroke();
/*   for(int y = 0; y < 10; y = y + 10)
   {
     for(int x = 200; x < 450; x = x + 50)
      {
        Heart life = new Heart(x, y);
        life.show();
      }
   } */
   fill(0, 0, 0, 30);
   rect(0, 0, 700, 700);
   fill(255,0,0);
   for (int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].walk();
   }
     if(get(mouseX, mouseY) == color(10, 170, 240)) {
     fill(255);
     background(255, 0, 0);
     textSize(30);
     text("Ouch!", 300, 100);
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
    if(myX <= 0)
    {
      myX = myX + 20;
    }
    if(myX >= 700)
    {
      myX = myX - 20;
    }
    if(myY <= 0)
    {
      myY = myY + 20;
    }
    if(myY >= 700)
    {
      myY = myY - 20;
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
 /*
 class Heart
 {
   int myX, myY;
   Heart(int x, int y)
   {
     myX = x;
     myY = y;
   }
   void show()
   {
     beginShape();
     vertex(myX + 50, myY + 15); 
     bezierVertex(myX + 50, myY + -5, myX + 90, myY + 5, myX + 50, myY + 40); 
     vertex(myX + 50, myY + 15); 
     bezierVertex(myX + 50, myY + -5, myX + 10, myY + 5, myX + 50, myY + 40); 
     endShape();
   }
 } */