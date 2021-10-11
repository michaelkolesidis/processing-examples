//Examples


//Cursor move draw lines
void setup() {
  size(500, 500);
}
void draw() {
  line(width/2, height/2, mouseX, mouseY);
}

//------------------------------------------------------

//Redish Circles
void setup() {
  size (600, 600);
  noStroke();
}

void draw() {
  background(255, 200, 200);
  fill(255, 0, 0);
  circle(mouseX, mouseY, 100);
  circle(600-mouseX, 600-mouseY, 100);
  
  fill(175, 0, 0);
  circle(mouseY, mouseX, 100);
  circle(600-mouseY, 600-mouseX, 100);
}

//------------------------------------------------------

//Redish Shaky Circles 
float x; //Variables for shaking
float y;
void setup() {
  size (600, 600);
  noStroke();
}

void draw() {
  x = random(-10, 10); //Randomize x,y for every cycle
  y = random (-10, 10);
  background(255, 200, 200);
  fill(255, 0, 0);
  circle(mouseX+x, mouseY+y, 100); //Add the shaking factors x,y to respective coordinates
  circle(600-mouseX+x, 600-mouseY+y, 100);
  
  fill(175, 0, 0);
  circle(mouseY+y, mouseX+x, 100);
  circle(600-mouseY+y, 600-mouseX+x, 100);
}

//------------------------------------------------------

//Color Vomit
void setup() {
  size (700, 700);
  noStroke();
  colorMode(RGB, 700);
  rectMode(CENTER);
  background(700-mouseX, 700-mouseY, mouseX+100);

}

void draw() {

  fill(700-mouseX, mouseX, mouseY+100);
  rect(700-mouseX, 700-mouseY, mouseY, mouseX, mouseX, mouseY, 700-mouseX, 700-mouseY);

  fill(600-mouseY, mouseY, 700-mouseX);
  triangle(mouseX, mouseY, mouseX-mouseY, mouseY-mouseX, 700-mouseX, 700-mouseY);

  fill(mouseY, 700-mouseY, mouseX);
  quad(mouseX, 700-mouseY, mouseY, 700-mouseX, mouseX-mouseY, mouseY-mouseX, mouseY/2, mouseX/2);

  fill(pmouseX-100, pmouseY, 600-mouseX);
  circle(pmouseX, pmouseY, 600-((mouseX+mouseY)/2));
  ellipse(600-mouseX, mouseY, mouseX, mouseY);
}

//------------------------------------------------------

//Simple square in center that reverses colors with background
void setup() {
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}
void draw() {
  if (150 < mouseX && mouseX < 250 && 150 < mouseY && mouseY < 250) {
    background(255);
    fill(0);
    rect(width/2, height/2, 100, 100);
  } else {
    background(0);
    fill(255);
    rect(width/2, height/2, 100, 100);
  }
}


//------------------------------------------------------

//Example 5.3 from book
//Rolloevers with 4 squares
//Top left coordinates
int x1 = 0; 
int y1 = 0;
//Top right coordinates
int x2 = 100; 
int y2 = 0;
//Bottom right coordinates
int x3 = 100; 
int y3 = 100;
//Bottom left coordinates
int x4 = 0; 
int y4 = 100;
//Dimensions for all areas
int w = 100; 
int h = 100;

void setup() {
  size(200, 200);
}

void draw() {
  //Background and lines dividing the space
  background(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  fill(0);
  //Top left
  if (mouseX < x2 && mouseY < y4) {
    rect(x1, y1, w, h);
  } 
  //Top right
  else if (mouseX > x2 && mouseY < y3) { //Same result when if is used instead of else if
    rect(x2, y2, w, h);
  } 
  //Bottom right
  else if (mouseX > x3 && mouseY > y3) {
    rect(x3, y3, w, h);
  } 
  //Bottom left
  else if (mouseX > x4 && mouseX < x3) {
    rect(x4, y4, w, h);
  } 
}

//------------------------------------------------------

//Barcode
float x;

void setup() {
  size(1200, 800);
  background(255);
  strokeWeight(5);
}

void draw() {
  line(x, 0, x, height);
  x = random(0, width);
}

//------------------------------------------------------

//Circle changing shape and color
void setup() {
  size(400, 400);
  colorMode(RGB, height);
}

void draw() {
  background(height);
  drawBlackCircle(mouseX);
}

void drawBlackCircle(int diameter) {
  fill(mouseY);
  noStroke();
  ellipse(width/2, height/2, diameter, diameter);
}

//------------------------------------------------------

//Monster with Objects (TO BE REVISED)
Monster greenMonster;
Star spaceStars;
boolean mouseClick = false;

void setup() {
  size(600, 400);
  greenMonster = new Monster();
  spaceStars = new Star();
}

void draw() {
  background(0, 0, 25);
  spaceStars.display();
  greenMonster.speed();
  greenMonster.bounce();
  greenMonster.display();
  greenMonster.monsterLaunch();
}

void mousePressed() {       //Star switch when mouse clicks
  mouseClick = !mouseClick;
}

class Monster {
  int x;
  int y;
  int w;
  int h;
  color c;
  int speedX;
  int speedY;
  
  int x2;
  int y2;
  int speedY2;
  

  Monster() {
    x = 100;
    y = 100;
    w = 100;
    h = 200;
    speedX = 1;
    speedY = 1;
    c = color(100, 200, 100);
    
    x2 = 450;
    y2 = 430;
    speedY2 = -1;
  }

  void display() {    //Display monster
    noStroke();
    fill(c);
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
      c = color(random(0, 255), random(0, 255), random(0, 255));    //Color is randomized
    }
    if (y > height-230  || y == 0) { //Monster hits top and bottom borders
      speedY *= -1;                  //Speeds becomes opposite, monsters goes towards opposite direction
      c = color(random(0, 255), random(0, 255), random(0, 255));    //Color is randomized
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
}

class Star {
  int starX;
  int starY;
  Star() {
  }

  void display() {
    if (mouseClick) {         //Draw stars in random coordinates
      for (int i=0; i < 40; i +=1) { //40 stars drawn at any time
        fill(150, 150, 0);
        starX = (int) random(0, width);
        starY = (int) random(0, height);
        circle(starX, starY, 5);
      }
    }
  }
}

//------------------------------------------------------

//Random Objects
float x1 = 10;
float y1 = 10;
float x2 = 180;
float y2 = 100;
float x3 = 100;
float y3 = 180;
float r = 300;

void setup() {
  size(500, 500);
  frameRate(30);
}

void draw() {
  background(0);
  fill(0);
  stroke(255);
  strokeWeight(2);
  triangle(x1 + random(r), y1 + random(r), x2 + random(r), y2 + random(r), x3 + random(r), y3 +random(r));
  rect(x1 + random(r), y1 + random(r), random(r), random(r));
  circle(x1 + random(r), y1 + random(r), random(r));
}

//------------------------------------------------------

//Modulo operation (even-odd alternating, white black color)
color c;

void setup() {
  size(1250, 100);
}

void draw() {
  for (int i = 0; i < 20; i++) { 
    if (i%2 == 1) {               //If odd number nodulo is always 1 when divided by 2
      c = color(0);
    } else if (i%2 == 0) {        ////If even number nodulo is always 0 when divided by 2
      c = color(255);
    }
    fill(c);
    noStroke();
    circle(40+60*i, height/2, 50);
  }
}

//------------------------------------------------------

//Modulo operation Checkers board
color c;

void setup() {
  fullScreen();
}

void draw() {
  for (int i = 0; i < 130; i++) {
    for (int j = 0; j <80; j++) {
      if (i%2 == 1) {
        if (j%2 == 1) {
          c = color(0);
        } else if (j%2 ==0) {
          c= color(255);
        }
      } else if (i%2 == 0) {
        if (j%2 == 0) {
          c = color(0);
        } else if (j%2 == 1) {
          c = color(255);
        }
      }
      fill(c);
      noStroke();
      rect(10*i,10*j, 10, 10);
    }
  }
}


//------------------------------------------------------

//Modulo Operation Checkers board flashing (+ smiley face)
color c;

void setup() {
  fullScreen();
}

void draw() {
  if (millis()%2 == 0) {
    println(millis());
    for (int i = 0; i < 130; i++) {
      for (int j = 0; j <80; j++) {
        if (i%2 == 1) {
          if (j%2 == 1) {
            c = color(0);
          } else if (j%2 ==0) {
            c= color(255);
          }
        } else if (i%2 == 0) {
          if (j%2 == 0) {
            c = color(0);
          } else if (j%2 == 1) {
            c = color(255);
          }
        }
        fill(c);
        noStroke();
        rect(10*i, 10*j, 10, 10);
      }
    }
  } else if (millis()%2 == 1) {
    for (int i = 0; i < 130; i++) {
      for (int j = 0; j <80; j++) {
        if (i%2 == 1) {
          if (j%2 == 1) {
            c = color(255);
          } else if (j%2 ==0) {
            c= color(0);
          }
        } else if (i%2 == 0) {
          if (j%2 == 0) {
            c = color(255);
          } else if (j%2 == 1) {
            c = color(0);
          }
        }
        fill(c);
        noStroke();
        rect(10*i, 10*j, 10, 10);
      }
    }
  }

  //Draw a smiley face
  fill(255, 220, 0);
  circle(width/2, height/2, 400);
  fill(0);
  circle(width/2-100, height/2-80, 30);
  circle(width/2+100, height/2-80, 30);
  arc(width/2, height/2+100, 140, 100, 0, PI);
}


//------------------------------------------------------

// Simple planet orbit
float posX, posY;
float radiusX, radiusY;
float theta;

void setup() {
  size( 400, 400 );
  frameRate(1000);
  posX = posY = 0;
  radiusX = 150;
  radiusY = 50;
  theta = 0;
}

void draw() {
  background( 0 );
  circle(width/2, height/2-5, 15);
  theta += 0.01;
  posX = radiusX * cos( theta );
  posY = radiusY * sin( theta );

  translate( width / 2, height / 2 );

  fill( 255 );
  stroke(0);
  ellipse( posX, posY, 5, 5 );
  //line(posX, posY, 0, -5);
}

//------------------------------------------------------

// Revolving O
float theta = 0;
float r = 100;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  float x = r*sin(theta);     // Adjuest shape of movement
  float y = r*cos(theta)*1.2; // Adjuest shape of movement
  color c = (int) abs(map(sin(theta), 0, 1, 0, 255));
  fill(c);
  noStroke();
  ellipse(x + width/2, y + height/2, 35, 35);
  theta += 0.05;  // Adjuest speed
  println(sin(theta));
}

//------------------------------------------------------

// Wave oscillation
float x = 0;
float y = 0;
void setup() {
  fullScreen();
  background(255);
}

void draw() {
   x += 1; 
   float xrad = radians(x);
   y = y*abs(cos(xrad))/4 + height/2; // If we remove abs we get regular oscillation
  noStroke();
  fill(0,100, 255);
  ellipse(x, y, 10, 10);
}

//------------------------------------------------------

// Circle moire
float x1, x2, y1, y2;
float speedx1 = 1;
float speedx2 = 1;
float speedy1 = 1;
float speedy2 = 1;

void setup() {
  size(800, 800);
  x1 = width/2;
  x2 = width/2;
  y1 = height/2;
  y2 = height/2;
  frameRate(30);
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(3);
  for (int i = 500; i >= 0; i -=5) {
    if (i%2 == 0) {
      ellipse(x1, height/2, i, i);
    } 
    x1 = x1 + speedx1;
    if (x1 >= width || x1 <= 0) speedx1 *= -1;
  }
  for (int i = 500; i >= 0; i -=5) {
    if (i%2 ==1) {
      ellipse(x2, height/2, i, i);
    }
    x2 = x2 - speedx2;
    if (x2 <= 0 || x2 >= width) speedx2 *= -1;
  }
  for (int i = 500; i >= 0; i -=5) {
    if (i%2 == 0) {
      ellipse(width/2, y1, i, i);
    } 
    y1 = y1 + speedy1;
    if (y1 >= height || y1 <= 0) speedy1 *= -1;
  }
  for (int i = 500; i >= 0; i -=5) {
    if (i%2 ==1) {
      ellipse(width/2, y2, i, i);
    }
    y2 = y2 - speedy2;
    if (y2 <= 0 || y2 >= height) speedy2 *= -1;
  }
}

//------------------------------------------------------

// Wave
float theta;

void setup() {
  size(600, 600);
  theta = 0.0;
}

void draw() {
  background(255);
  theta += 0.02;
  noStroke();
  fill(0);
  float x = theta;
  for (int i = 0; i < width; i +=5) {
    float y = map(sin(x), -1, 1, 0, height);
    ellipse(i, y, 10, 10);
    x += 0.04;
  }
}

//------------------------------------------------------

// Factorial
void setup() {
  factorial(10);
}

int factorial(int n) {
  int f = 1;
  for (int i = n; i > 1; i--) {
    f = f*i;
  }
  println(f);
  return f;
}

//------------------------------------------------------

// Pseudo-3D Pyramid
void setup() {
  size(500, 700);
  background(255);
}

void draw() {
  drawCircle(width/2, height-250, 400);
}

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  y = y - 0.8;
  if (radius > 2) {
    radius *= 0.99;
    drawCircle(x, y, radius);
  }
}

//------------------------------------------------------

// Recursion Circle Mandala
void setup() {
  size(700, 700);
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();
  drawCircle(width/2, height/2, 300);
}

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 10) {
    // drawCircle() calls itself twice, creating a branching effect. 
    // For every circle, a smaller circle is drawn to the left and right.
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}

//------------------------------------------------------

// TV Noise
int cols, rows;

void setup() {
  size(100, 100);
  cols = width;
  rows = height;
  strokeWeight(2);
}

void draw() {
  // Declare 2D array
  int[][] myArray = new int[cols][rows];

  // Initialize 2D array values
  for (int i = 0; i < cols; i ++ ) {
    for (int j = 0; j < rows; j ++ ) {
      myArray[i][j] = int(random(255));
    }
  }

  // Draw points
  for (int i = 0; i < cols; i ++ ) {
    for (int j = 0; j < rows; j ++ ) {
      stroke(myArray[i][j]);
      point(i, j);
    }
  }
}

//------------------------------------------------------

// Anemometer

void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(0, 175, 255);
  fill(255);
  strokeWeight(4);
  line(300, 300, 300, 600);
  translate(width/2, height/2);
  float theta = map(mouseX, 0, width, 0, TWO_PI);
  //float yota = map(mouseY, 0, height, 0, TWO_PI);
  //rotateX(yota);
  rotateY(theta);
  line(-125, 0, 125, 0);
  fill(255, 0, 0, 200);
  circle(-150, 0, 50);
  circle(150, 0, 50);
}

//------------------------------------------------------

// Pixels TV noise

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

// Clock

PFont f;
String message = "time is passing";
float thetaH, thetaM;

void setup() {
  size(600, 600);
  f = createFont("Arial", 20);
  thetaH = 0;
  thetaM = 0;
}

void draw() {

  background(255);
  fill(0);
  textFont(f);                  // Set the font
  textAlign(RIGHT);

  pushMatrix();
  translate(width/2, height/2); // Translate to the center
  rotate(thetaH);                // Rotate by theta
  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text(message, 0, 0); 
  // Increase rotation
  thetaH += 0.002;
  popMatrix();

  pushMatrix();
  translate(width/2, height/2); // Translate to the center
  rotate(thetaM);                // Rotate by theta
  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text("but you cannot feel it", 0, 0); 
  popMatrix();
  // Increase rotation
  thetaM += 0.12;
}

//------------------------------------------------------

// Star Wars

String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float y = 0;

void setup() {
  size(400, 200, P3D);
  f = createFont("Arial", 80);
}

void draw() {
  background(0);
  fill(255, 235, 15);
  translate(width/2,height);
  rotateX(PI/3);
  textFont(f);
  textAlign(CENTER);
  text(info,0,y);
  y--;
}

//------------------------------------------------------

//

//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------



//------------------------------------------------------


