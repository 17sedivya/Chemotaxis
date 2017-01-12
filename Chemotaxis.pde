 Bacteria [] mover;
 void setup()   
 {     
    size(300, 300);
    background(0);
    mover = new Bacteria[100];
    for(int i = 0; i < mover.length; i++){
      mover[i] = new Bacteria();
    } 
 }   
 void draw()   
 {    
   background(7, 65, 48);
   for(int i = 0; i < mover.length; i++){
     mover[i].move();
     mover[i].show();
   }
 }  
 class Bacteria    
 {     
    int myX, myY;
    Bacteria(){
    myX = 250;
    myY = 250;
    }
  void show(){
    fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    ellipse(myX, myY, 20, 20);
  } 
 void move(){
    if(mouseX > myX && mouseY > myY){
      myX += (int)(Math.random()*5);
      myY += (int)(Math.random()*5);
    }
    else if(mouseX < myX && mouseY < myY){
      myX -= (int)(Math.random()*5);
      myY -= (int)(Math.random()*5);
    }
    else if(mouseX < myX && mouseY > myY){
      myX -= (int)(Math.random()*5);
      myY += (int)(Math.random()*5);
    }
    else if(mouseX > myX && mouseY < myY){
      myX += (int)(Math.random()*5);
      myY -= (int)(Math.random()*5);
    }
    else{
      myX += (int)(Math.random()*3)-1;
      myY += (int)(Math.random()*3)-1;
    }
  } 
 }    
