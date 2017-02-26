/*

 Intro to Generative Art Workshop by Liu Chang
 3.05.2017 @Queens Museum, Queens, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.liuchang.work
 
 */

// Simple Recursion

void setup() {
  size(640,640);  
}

void draw() {
  background(255);
  drawCircle(width/2,height/2,width); 
  noLoop();
}

// Very simple function that draws one circle 
// and recursively calls itself
void drawCircle(int x, int y, float r) {
  ellipse(x, y, r, r);
  // Exit condition, stop when radius is too small
  if(r > 2) {
    r *= 0.75f;
    // Call the function inside the function! (recursion!)
    drawCircle(x, y, r);	 
  }				
}