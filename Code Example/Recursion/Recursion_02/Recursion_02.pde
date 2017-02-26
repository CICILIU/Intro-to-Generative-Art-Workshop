/*

 Intro to Generative Art Workshop by Liu Chang
 3.05.2017 @Queens Museum, Queens, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.liuchang.work
 
 */

void setup() {
  size(640,640);  
}

void draw() {
  background(0);
  drawCircle(width/2,height/2,400); 
  noLoop();
}

// Recursive function
void drawCircle(float x, float y, float r) {
  stroke(255);
  noFill();
  ellipse(x, y, r, r);
  if(r > 2) {
    // Now we draw two more circles, one to the left
    // and one to the right
    drawCircle(x + r/2, y, r/2);
    drawCircle(x - r/2, y, r/2);
  }
}