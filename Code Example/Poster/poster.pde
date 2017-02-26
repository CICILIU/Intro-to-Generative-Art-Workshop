/*

 Intro to Generative Art Workshop by Liu Chang
 3.05.2017 @Queens Museum, Queens, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.liuchang.work
 
 */
void setup() {

  //fullScreen();
  size(800, 800, P3D);
  background(random(0, 255), random(0, 255), random(0, 255));
  stroke(random(0, 255), random(0, 255), random(0, 255));//set one color
  fill(random(0, 255), random(0, 255), random(0, 255), random(50, 100));//set one color
  float xstart = random(100);
  float ynoise = random(100);

  translate(width/2, height/2);

  for (float y = -(height/8); y<=(height/8); y+=3) {

    ynoise+=0.02;//change back to 0.02
    float xnoise = xstart;
    for (float x = -(width/8); x<=(width/8); x+=3) {

      xnoise +=0.02;//change back to 0.02
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {

  pushMatrix();
  translate(x*noiseFactor*4, y*noiseFactor*4, -y);
  float edgeSize = noiseFactor*10;
    //stroke(random(0, 255), random(0, 255), random(0, 255));
  noStroke();
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
}



void keyPressed() {
  if (key == ' ') {
    setup();
  }
}