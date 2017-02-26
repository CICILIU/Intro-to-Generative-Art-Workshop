/*

Intro to Generative Art Workshop by Liu Chang
3.05.2017 @Queens Museum, Queens, New York
 
Below is a code example for the exercise section.
Only for education purpose.
 
www.liuchang.work
 
*/

void setup() { 
  size(400, 400);
  background(0);
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(190 - i * 20,200 - i * 10,190 - i * 30);
    noStroke();
    ellipse(width/2, height/2, 300 - i * 30, 300 - i * 30);
  }
} 