//Learning Processing (Excercises)

//1.3
point(1, 1);
ellipseMode(CENTER);
ellipse(6, 2, 7, 3);
line(1, 5, 1, 9);
line(0, 9, 5, 4);
rect(5, 6, 5, 4);

//------------------------------------------------------

//1.4
fill(0);
rect(1, 1, 49, 49);
fill(255);
rect(1, 50, 49, 49);
rect(50, 1, 49, 49);
fill(150);
rect(50, 50, 49, 49);

//------------------------------------------------------

//1.5
fill(0,0,255);
ellipse(20, 40, 16, 16);
fill(127,0,127);
ellipse(40, 40, 16, 16);
fill(255,255,0);
ellipse(60, 40, 16, 16);

//------------------------------------------------------

//1.7
void setup() {
  size(800, 400);
  background(255);
  noStroke();
}

void draw() {
  monster1();
  monster2();
  monster3();
}

void monster1() {
  //Draws Monster 1
  fill(100, 200, 100);
  rect(100, 100, 100, 200);
  rect(120, 300, 20, 30);
  rect(160, 300, 20, 30);
  fill(255);
  ellipse(133, 133, 20, 20);
  ellipse(166, 133, 20, 20);
  fill(0);
  ellipse(133, 133, 10, 10);
  ellipse(166, 133, 10, 10);
  ellipse(150, 250, 60, 30);
}

void monster2() {
  //Draws Monster 2
  fill(200, 100, 100);
  rect(300, 100, 100, 200);
  rect(320, 300, 20, 30);
  rect(360, 300, 20, 30);
  fill(255);
  ellipse(333, 133, 20, 20);
  ellipse(366, 133, 20, 20);
  fill(0);
  ellipse(333, 133, 10, 10);
  ellipse(366, 133, 10, 10);
  ellipse(350, 250, 60, 30);
}

void monster3() {
  //Draws Monster 3
  fill(100, 100, 200);
  rect(500, 100, 100, 200);
  rect(520, 300, 20, 30);
  rect(560, 300, 20, 30);
  fill(255);
  ellipse(533, 133, 20, 20);
  ellipse(566, 133, 20, 20);
  fill(0);
  ellipse(533, 133, 10, 10);
  ellipse(566, 133, 10, 10);
  ellipse(550, 250, 60, 30);
}

//------------------------------------------------------

//2.8
size(800, 800);
strokeWeight(1);
line(100, 100, 700, 100);
strokeWeight(5);
line(100, 200, 700, 200);
strokeWeight(10);
line(100, 300, 700, 300);

//------------------------------------------------------

//3.2
void setup() {
  size(800, 400);
  background(255);
  noStroke();
}

void draw() {
  //Monster 1
  fill(100, 200, 100);
  rect(100, 100, 100, 200);
  rect(120, 300, 20, 30);
  rect(160, 300, 20, 30);
  fill(255);
  ellipse(133, 133, 20, 20);
  ellipse(166, 133, 20, 20);
  fill(0);
  ellipse(133, 133, 10, 10);
  ellipse(166, 133, 10, 10);
  ellipse(150, 250, 60, 30);

  //Monster 2
  fill(200, 100, 100);
  rect(300, 100, 100, 200);
  rect(320, 300, 20, 30);
  rect(360, 300, 20, 30);
  fill(255);
  ellipse(333, 133, 20, 20);
  ellipse(366, 133, 20, 20);
  fill(0);
  ellipse(333, 133, 10, 10);
  ellipse(366, 133, 10, 10);
  ellipse(350, 250, 60, 30);

  //Monster 3
  fill(100, 100, 200);
  rect(500, 100, 100, 200);
  rect(520, 300, 20, 30);
  rect(560, 300, 20, 30);
  fill(255);
  ellipse(533, 133, 20, 20);
  ellipse(566, 133, 20, 20);
  fill(0);
  ellipse(533, 133, 10, 10);
  ellipse(566, 133, 10, 10);
  ellipse(550, 250, 60, 30);
}

//------------------------------------------------------

//4.2 Pong variables
/* Variables:
leftSocre
leftPosition
rightScore
rightPosition
ballPositionX
ballPositionY
ballSpeed


int leftScore = 0;
float leftPosition = height/2;
int rightScore = 0;
float rightPosition = height/2;
float ballPositionX = width/2;
float ballPositionY = height/2;
float ballSpeed = 0; */

//------------------------------------------------------

//4.4
//Step 1
//1st screenshot
void setup() {
  size(200, 200);
  background(255);
  fill(180);
}

void draw() {
  circle(50, 50, 50);
  circle(150, 50, 50);
  circle(50, 150, 50);
  circle(150, 150, 50);
}

//2nd screenshot
void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  line(100, 0, 100, 100);
  line(0, 200, 100, 100);
  line(200, 200, 100, 100);
}

//3rd screenshot
void setup() {
  size(200, 200);
  background(180);
  fill(255);
}

void draw() {
  circle(100, 100, 100);
}

//Step 2
//1st screenshot
int backgroundColor = 255;
int fillColor = 180;
int circleSize = 50;
int circle1X = 50;
int circle1Y = 50;
int circle2X = 150;
int circle2Y = 50;
int circle3X = 50;
int circle3Y = 150;
int circle4X = 150;
int circle4Y = 150;

void setup() {
  size(200, 200);
  background(backgroundColor);
  fill(fillColor);
}

void draw() {
  circle(circle1X, circle1Y, circleSize);
  circle(circle2X, circle2Y, circleSize);
  circle(circle3X, circle3Y, circleSize);
  circle(circle4X, circle4Y, circleSize); 
}

//Step 3
//1st screenshot
int backgroundColor = 255;
int fillColor = 180;
int circleSize1 = 50;
int circleSize2 = 50;
int circle1X = 50;
int circle1Y = 50;
int circle2X = 150;
int circle2Y = 50;
int circle3X = 50;
int circle3Y = 150;
int circle4X = 150;
int circle4Y = 150;

void setup() {
  size(200, 200);
  background(backgroundColor);
  fill(fillColor);
}

void draw() {
  circle(circle1X, circle1Y, circleSize1);
  circle(circle2X, circle2Y, circleSize2);
  circle(circle3X, circle3Y, circleSize1);
  circle(circle4X, circle4Y, circleSize2);
  circle1X = circle1X + 1;
  circle2Y = circle2Y - 1;
  circleSize1 = circleSize1 + 1;
  circleSize2 = circleSize2 - 1;
}

//------------------------------------------------------

//4.6
// Declaring Variables.  
// zoogX and zoogY are for feature #1.  eyeR, eyeG, eyeB are for feature #2.
float zoogX;
float zoogY;

float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(640,360);        // Set the size of the window
  // Feature #1.  zoogX and zoogY are initialized based on the size of the window.  
  // Note we cannot initialize these variables before the size() function is called 
  // since we are using the built-in variables width and height.
  zoogX = width/2;      // Zoog always starts in the middle
  zoogY = height + 100; // Zoog starts below the screen
}

void draw() {

  background(255);  // Draw a white background 
  //SHAKE IT
  zoogX = (width/2) + random(-20, 20);
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(150);
  // Feature #1.  zoogX and zoogY are used for the shape locations.
  rect(zoogX,zoogY,20,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(zoogX,zoogY-30,60,60); 

  // Draw Zoog's eyes
  // Feature #2.  eyeR, eyeG, and eyeB are given random values and used in the fill() function.
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  fill(eyeR,eyeG,eyeB);
  
  ellipse(zoogX-19,zoogY-30,16,32); 
  ellipse(zoogX+19,zoogY-30,16,32); 

  // Draw Zoog's legs
  stroke(150);
  line(zoogX-10,zoogY+50,zoogX-10,height);
  line(zoogX+10,zoogY+50,zoogX+10,height);
  
  // Zoog moves up
  zoogY = zoogY - 1;

}

//------------------------------------------------------

//4.7
float x; //Shaking variables
float y;

int r = 100; //Color variables
int g;
int b = 100;
int a;
int randomG;

int y2 = 0; //Randomize size variable

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(0, 0, 25);

  x = random (-5, 5); //Shake the shaking variable
  y = random (-5, 5);

  //Monster
  randomG = (int) random(-50, 50); //Randomize color 
  g = 200 + randomG;               //could be written randomG= int(random(-50, 50));
  fill(r, g, b);

  translate(mouseX, mouseY); //Make positions relative to mouse position
  rect(0+x, 0+y, (width/8), (height/3)+y2, 25); //In all positions x or y are added for shaking
  rect(20+x, 200+y, width/40, (height/20)+y2);
  rect(60+x, 200+y, width/40, (height/20)+y2);

  fill(255);
  ellipse(33+x, 33+y, width/40, height/30);
  ellipse(66+x, 33+y, width/40, height/30);
  fill(0);
  ellipse(33+x, 33+y, width/80, height/60);
  ellipse(66+x, 33+y, width/80, height/50);
  ellipse(50+x, 150+y, width/13.3333, height/20);

  println(frameCount); //Show number of frames in console
}

void mousePressed() {
  y2 = (int) random(0, height/5); //Height of body and feet changes randomily when mouse is clicked
}

//------------------------------------------------------

// Example 5-6: Bouncing Ball in 2D plus speed increase
float x = 0;
float y = 150;
float speedX = 1.1;
float speedY = 1.1;

void setup() {
  size(400, 300);
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x = x + speedX;
  y = y + speedY;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speedX = speedX * -1.05;
  }
  if ((y > height) || (y < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speedY = speedY * -1.05;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, y, 50, 50);
}

//------------------------------------------------------

//Exercise 5.10 Monsters with everything I learnt so far
int w = 100; //Monster dimensions
int h = 200;
int x = 100; //Monster 1 position
int y = 100;
int speedX = 1; //Monster 1 speed
int speedY = 1;
int r = 100; //Monster colors
int g = 200;
int b = 100;
int starX, starY; //Star positions
boolean mouseClick = false; //Star switch
int x2 = 450; //Monster 2 position
int y2 = 430;
int speedY2 = -1; //Monster 2 speed

void setup() {
  size (600, 400);
}

void draw() {
  background(0, 0, 25);
  stars();
  monster();
  speed(); 
  bounce();
  monsterLaunch();
}

void mousePressed() {       //Star switch when mouse clicks
  mouseClick = !mouseClick;
}

void stars() {
  if (mouseClick) {         //Draw stars in random coordinates
    for (int i=0; i < 40; i +=1) { //40 stars drawn at any time
      fill(150, 150, 0);
      starX = (int) random(0, width);
      starY = (int) random(0, height);
      circle(starX, starY, 5);
    }
  }
}

void monster() {     //Draw monster
  noStroke();
  fill(r, g, b);
  rect(x, y, w, h);
  rect(x+w/5, y+h, w/5, h/6.66);
  rect(x+w/1.66, y+h, w/5, h/6.66);
  fill(255);
  ellipse(x+w/3, y+h/6.06, w/5, h/10);
  ellipse(x+w/1.515, y+h/6.06, w/5, h/10);
  fill(0);
  ellipse(x+w/3, y+h/6.06, w/10, h/20);
  ellipse(x+w/1.515, y+h/6.06, w/10, h/20);
  ellipse(x+w/2, y+h/1.33, w/1.66, h/6.66);
}

void speed() {
  x = x + speedX; //Location changes according to speed in x axis
  y = y + speedY; //Location changes according to speed in y axis
}

void bounce() {
  if (x > width-100 || x == 0) { //Monster hits left and right borders
    speedX *= -1;                //Speeds becomes opposite, monsters goes towards opposite direction
    r = (int) random(0, 255);    //Color is randomized
    g = (int) random(0, 255);
    b = (int) random(0, 255);
  }
  if (y > height-230  || y == 0) { //Monster hits top and bottom borders
    speedY *= -1;                  //Speeds becomes opposite, monsters goes towards opposite direction
    r = (int) random(0, 255);      //Color is randomized
    g = (int) random(0, 255);
    b = (int) random(0, 255);
  }
}

void monsterLaunch () {
  if (mouseClick) {   //Monster 2 lanched to space when mouse clicked
    y2 = y2 + speedY2;
    for (int i = y2 + 40; i < y2 + 200; i +=40) { //Draw the arms of monster 2
      fill(100, 200, 100);
      rect(x2 - 20, i, 140, 20);
    }

    if (mouseX>x2 && mouseX<x2+w && mouseY>y2 && mouseY<y2+h) {  //If mouse over Monster 2, it becomes transparent
      fill(0, 0, 25);
    } else {
      fill(100, 200, 100);
    }

    /*for(int i = y2 + 40; i < y2 + 200; i +=40) { //Draw the arms of monster 2
     fill(100, 200, 100);
     rect(x2 - 20, i, 140, 20);
     } */    //Rollover doesn't work when this is enabled because y2 is modified in an if

    rect(x2, y2, w, h);       //Draw Monster 2
    rect(x2+20, y2+h, 20, 30);
    rect(x2+60, y2+h, 20, 30);
    fill(255);
    ellipse(x2+33, y2+33, 20, 20);
    ellipse(x2+66, y2+33, 20, 20);
    fill(0);
    ellipse(x2+33, y2+33, 10, 10);
    ellipse(x2+66, y2+33, 10, 10);
    ellipse(x2+50, y2+150, 60, 30);
  }
}

//------------------------------------------------------

//Erxercise 6.8
void setup() {    //If I don't use void setup, void draw it will be static
  size(600, 600);
}

void draw() {
  for (int x = 0; x < width; x = x + width/40) {
    for (int y = 0; y < height; y = y + height/40) {
      noStroke();
      fill(random(0, 255));
      rect(x, y, width/40, height/40);
    }
  }
}

//------------------------------------------------------

// Excercise 7.10

void setup() {
  size(640, 360);
}
void draw() {
  background(255);
  color c = (mouseX);
  spaceShip(482, 159, 223, c);
  spaceShip(126, 89, 93, c);
  spaceShip(422, 286, 84, c);
  spaceShip(294, 49, 48, c);
  spaceShip(162, 220, 151, c);
}

void spaceShip (int x, int y, int size, color c) {
  noStroke();
  fill(c);
  ellipse(x, y, size, size/3);
  ellipse(x, y - size/8, size/3, size/3);
  fill(255);
  ellipse(x, y, size/7, size/7);
  ellipse(x + size/4, y, size/7, size/7);
  ellipse(x - size/4, y, size/7, size/7);
}

//------------------------------------------------------

//Excercise 9.8

Button[] buttons = new Button[5];

void setup() {
  size(600, 200);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(100*i+50, (height/2)-25, 50, 50);
  }
}

void draw() {
  background(155);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
  }
}

void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].onOff();
  }
}

class Button {
  float x;
  float y;
  float w;
  float h;
  boolean on;

  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    on = false;
  }

  void display() {
    if (on) {
      fill(0);
    } else {
      fill(110);
    }
    noStroke();
    rect(x, y, w, h);
  }


  void onOff() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      on = !on;
    }
  }
}

//------------------------------------------------------

// Excercise 13.2

float y = 100;
void setup() {
  size(200, 200);
}
void draw() {
  background(0);
  float r = random(1);
  if (r <= 0.1) {
    y++;
  } 
  if (r > 0.1 &&  r <= 0.3) {
    y--;
  }
  ellipse(width/2, y, 16, 16);
}

//------------------------------------------------------

//Excercise 13.6
float r = 0; 
float theta = 0;

void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  ellipse(x + width/2, y + height/2, 16, 16); // Adjust for center of window

  // Increment the angle
  theta += 0.01;  // If r/theta = 5, same shape with different speeds
  r += 0.05;
}


//------------------------------------------------------

//Excercise 13.8 Breathing circle
float theta = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  noStroke();
  fill(0);
  float d = 200+sin(theta)*10;
  ellipseMode(CENTER);
  ellipse(width/2, height/2, d, d);
  theta += 0.02;
}

//------------------------------------------------------

// Excercise 14.6 Line spinning

void setup() {
  size(600, 600, P2D);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  float theta = map(mouseX, 0, width, 0, TWO_PI);
  rotate(theta);
  line(-150, 0, 150, 0);
  fill(155);
  circle(-150, 0, 20);
  circle(150, 0, 20);
}

//------------------------------------------------------

// Excercise 15.3 Image mouse tint

PImage img;
float r, g, b, t;

void setup() {
  size(800, 800);
  img = loadImage("image.png");
}

void draw() {
  r = map(mouseX, 0, width, 0, 255);
  g = map(mouseY, 0, height, 0, 255);
  b = map(dist(mouseX, mouseY, width, height), 0, 1131.37, 0, 255);
  t = map(dist(mouseX, mouseY, width, height), 0, 1131.37, 0, 255);
  
  background(255);
  tint(r, g, b, t);
  image(img, 0, 0);
}

//------------------------------------------------------

// Excercise 15.4 Images on top transparency

PImage img;
PImage img2;
float r, g, b, t;

void setup() {
  size(800, 600);
  img = loadImage("image.png");
  img2 = loadImage("image2.png");
}

void draw() {
  t = map(mouseX, 0, width, 100, 255);
  //g = map(mouseY, 0, height, 0, 255);
  //b = map(dist(mouseX, mouseY, width, height), 0, 1131.37, 0, 255);
  //t = map(dist(mouseX, mouseY, width, height), 0, 1131.37, 0, 255);

  background(255);
  tint(255, 255, 255, 255);
  image(img, 0, 0);
  tint(255, 255, 255, t);
  image(img2,0,0);
}

//------------------------------------------------------

// Example 15.5 Setting pixels (TV noise)

void setup() {
  fullScreen();
  loadPixels();
}

void draw() {
  for (int i = 0; i < pixels.length; i++) {
    float rand =random(255);
    color c = color(rand);
    pixels[i] = c;
  }
  updatePixels();
}

//------------------------------------------------------

// Excercise 15.8

PImage img;

void setup() {
  size(200, 200);
  img = loadImage( "sunflower.jpg" );
}

void draw() {
  loadPixels();
  img.loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.  img.loadPixels(); 
  for (int x = 0; x < img.width; x++ ) {
    for (int y = 0; y < img.height; y++ ) {

      // Calculate the 1D pixel location
      int loc = x + y*img.width;

      // Get the R,G,B values from image
      float r = red  (img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue (img.pixels[loc]);

      // Calculate an amount to change brightness
      // based on proximity to the mouse
      float distance = dist(x, y, mouseX, mouseY);

      // The closer the pixel is to the mouse, the lower the value of "distance" 
      // We want closer pixels to be brighter, however, so we invert the value using map()
      // Pixels with a distance of 50 (or greater) have a brightness of 0.0 (or negative which is equivalent to 0 here)
      // Pixels with a distance of 0 have a brightness of 1.0.
      float adjustBrightnessG = map(distance, 0, img.width, 0, 3);
      float adjustBrightnessR = map(mouseX, 0, width, 0, 3);
      float adjustBrightnessB = map(mouseY, 0, height, 0, 3);

      r *=  adjustBrightnessR;
      g *= adjustBrightnessG;
      b *= adjustBrightnessB;

      // Constrain RGB to between 0-255
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      // Make a new color and set pixel in the window
      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }

  updatePixels();
}

//------------------------------------------------------

// Excercise 16.4 Color detection

import processing.video.*;

// Variable for capture device
Capture video;
color trackColor;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();

  // Start off tracking for red
  trackColor = color(255, 0, 0);
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();
  image(video, 0, 0);

  float worldRecord = 500;

  // (x,y) coordinate of closest color
  int closestX = 0;
  int closestY = 0;

  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {

      int loc = x + y * video.width;

      // What is current color
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      // Using euclidean distance to compare colors
      float d = colorDiff(r1, g1, b1, r2, g2, b2);

      // If current color is more similar to tracked
      // color than closest color, save current location
      // and current difference
      if (d < worldRecord) {
        worldRecord = d;
        closestX = x;
        closestY = y;
      }
    }
  }
  if (worldRecord < 100) {
    // Draw a circle at the tracked pixel
    fill(trackColor);
    strokeWeight(4);
    stroke(0);
    ellipse(closestX, closestY, 16, 16);
  }
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY * video.width;
  trackColor = video.pixels[loc];
}

float colorDiff(float r1, float g1, float b1, float r2, float g2, float b2) {
  return (r1-r2)*(r1-r2) + (g1-g2)*(g1-g2) + (b1-b2)*(b1-b2);
}

//------------------------------------------------------

// Excercise 17.5

PFont f;
String coordinates;
int x, y, speed, d;

void setup() {
  size(400, 400);
  f = createFont("Georgia", 20);
  x = width / 2;
  y = height / 2;
  speed = 1;
  d = 20;
}

void draw() {
  background(255);

  ellipse(x, y, d, d);
  y += speed;

  if (y >= height - d/2 || y <= 0 + d/2) {
    speed *= -1;
  }

  textFont(f, 20);
  fill(0);

  coordinates = x + ", " + y;
  text (coordinates, x + d, y);
} 

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------

//------------------------------------------------------


