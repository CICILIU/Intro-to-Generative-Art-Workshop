/*

 Intro to Generative Art Workshop by Liu Chang
 3.05.2017 @Queens Museum, Queens, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.liuchang.work
 
 */

void setup() {
  size(800, 800);  
}

void draw() {
  background(0);
  drawCircle(width/2, height/2, 400);
  noLoop();
}

void drawCircle(float x, float y, float radius) {
  noFill();
  stroke(255);
  ellipse(x, y, radius, radius);
  if (radius > 8) {
    // Four circles! left right, up and down
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}