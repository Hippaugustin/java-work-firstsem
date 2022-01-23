float rect1 = 0;      
float rect2 = 0;
float rect3 = 0;
float rect4 = 0;
float rect5 = 0;
float rect6 = 0;

void setup() {
  size(1000, 600);
  noStroke();
  noCursor();  
    
}

void draw() {
  background(0);
  for(int i=1; i<5;i++){
    ellipse(150,150,200,200);
    fill(204);
    ellipse(300,300,200,200);
    fill(204);
    ellipse(470,450,200,200);
    fill(204);
    ellipse(150,150,200,200);
    fill(204);
    ellipse(850,150,200,200);
    fill(204);
    ellipse(660,320,200,200);
    fill(204);
  }
  rect1 = rect1+3;
  rect2 = rect2+2;
  rect3 = rect3+1;
  rect4 = rect4+1;
  rect5 = rect5+3;
  rect6 = rect6+4;
  colorCheck(rect1,0,255,0);
  drawRectTop(2);
  colorCheck(rect2,0,0,255);   //this makes the rectangle have a specific color 
   drawRectBot(1);             // this draws the rectangle with the color above
  colorCheck(rect3,0,255,0);
   drawRectTop2(1);
  colorCheck(rect4,80,50,255);
  drawRectBot2(3);
  colorCheck(rect5,10,200,255);
  drawRectTop3(4);
  colorCheck(rect6,20,30,255);
  drawRectBot3(2);
   ellipse(mouseX,mouseY,15,15);
  

 
  
  if(rect1 > width) {        
    rect1 = 0;
  }
  if(rect2 > width) {
   
    rect2 = 0;
  }
  if (rect3 > width) {   // this makes so that the rectangle comes back to the start when it reaches the end of the window
    rect3 = 0;
  }
  if (rect4 > width) {
    rect4 = 0;
  }
  if (rect5 > width) {
    rect5 = 0;
  }
    if(rect6 > width) { 
    rect6 = 0;
  }
  
}


  
  void drawRectTop(float speed1) {
  rect(rect1, 0, 10, height/2);       //draws rect1 on top and make it go faster with the speed variable
  rect1 = rect1+speed1;               // repeat this for all 6 rectangles on top and bottom
    
}
 void drawRectBot(float speed2){
   rect(rect2,height/2,10,width);       
   rect2 = rect2+speed2;
  

 }
  void drawRectTop2(float speed3) {
  rect(rect3, 0, 10, height/2);
  rect3 = rect3+speed3;
  }
  
   void drawRectBot2(float speed4){
   rect(rect4,height/2,10,width);
   rect4 = rect4+speed4;
  

 }
 void drawRectTop3(float speed5) {
  rect(rect5, 0, 10, height/2);
  rect5 = rect5+speed5;
 
}
   void drawRectBot3(float speed6){
   rect(rect6,height/2,10,width);
   rect6 = rect6+speed6;
  

 }
 void colorCheck(float a, int r, int g, int b){
 if (mouseX > a+10){
      fill(r,g,b);  //rgb
 }
      else if (mouseX < a+10) {
     fill(255);
      }

 }
