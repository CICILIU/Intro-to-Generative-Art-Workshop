/*

 Intro to Generative Art Workshop by Liu Chang
 3.05.2017 @Queens Museum, Queens, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.liuchang.work
 
 */

void setup() { 
  size(800, 800);
  background(220);
  noStroke();

  for (int i = 0; i < height; i+=100) {
    for (int j = 0; j < width; j+=100) {
      fill(155, 255, 155, 150);
      ellipseMode(LEFT);
      ellipse(j, i, 60, 60);
    }
  }
}