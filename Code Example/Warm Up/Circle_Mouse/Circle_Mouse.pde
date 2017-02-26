/*

Intro to Generative Art Workshop by Liu Chang
3.05.2017 @Queens Museum, Queens, New York
 
Below is a code example for the exercise section.
Only for education purpose.
 
www.liuchang.work
 
*/

void setup() { 
  size(500, 500,P2D);
  background(0);
  smooth(100);
} 

void draw() {
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(mouseX - i * 20, mouseY - i * 10, mouseX - i * 30);
    noStroke();
    ellipse(width/2, height/2, 400 - i * 30, 400 - i * 30);
    //rectMode(CENTER);
    //rect(width/2, height/2, 500 - i * 50, 500 - i * 50);
  }
}