int x = 400;
int x2 = 700;
int x3 = 900;
int rand;
float g = 400.1; // gravity
int u = 0; // up control
int Size = (int) random(35, 60); //cloud size
boolean collision = false;
int rectY = 800;
int Ballx = 50;
int cloudColor = (int) random(240, 255);
String go ="GAME OVER";
float Time = 0;

// command space then type quicktime player, then go to file new screen recording or control command n. Make sure nothing else is in the video then your animation. press record, press stop once done and change the name to DAVID_HUTCHINSON_ANIMATION_SEMESTER1_PROJECT.

void setup() {
  size(1000, 1000);
  background(30, 150, 230);
  textSize(75);
}

void draw() {
  background(30, 150, 230);
  fill(cloudColor);
  circle(350, 400, Size);// cloud
  fill(cloudColor);
  circle(360, 420, Size);
  fill(cloudColor);
  circle(340, 410, Size);
  fill(cloudColor);
  circle(340, 420, Size);

  fill(cloudColor);
  circle(150, 400, Size);
  fill(cloudColor);
  circle(160, 420, Size);
  fill(cloudColor);
  circle(140, 410, Size);
  fill(cloudColor);
  circle(140, 420, Size);

  fill(cloudColor);
  circle(550, 400, Size);
  fill(cloudColor);
  circle(560, 420, Size);
  fill(cloudColor);
  circle(540, 410, Size);
  fill(cloudColor);
  circle(540, 420, Size);

  fill(cloudColor);
  circle(750, 400, Size);
  fill(255);
  circle(760, 420, Size);
  fill(255);
  circle(740, 410, Size);
  fill(255);
  circle(740, 420, Size);

  //if circle is colliding against the rectangle Ballx >= rectX
  // and BallY >= rectY top && BallY <= rectY bottom
  // then set collision = true

  fill(220, 255, 50);
  circle(Ballx, g, 50);
  fill(25, 255, 150);
  rect(x, 500, 75, 350); //bottom first pipe 
  rect(x, 0, 75, 300); // top first pipe
  rect (x2, 700, 75, 150); // bottom second pipe
  rect (x2, 0, 75, 500); // top second pipe
  rect(x3, 0, 75, 150); // top third pipe
  rect(x3, 350, 75, 500);// bottom third pipe
  stroke(255);

  if (Ballx >= x && g >= 500 && g <= 850) {
    collision = true;
  }
  if (Ballx >= x && g >= 0 && g <= 300) {
    collision = true;
  }
  if (Ballx >= x2 && g >= 700 && g <= 850) {
    collision = true;
  }
  if (Ballx >= x2 && g >= 0 && g <= 500) {
    collision = true;
  }
  if (Ballx >= x3 && g >= 0 && g <= 150) {
    collision = true;
  }
  if (Ballx >= x3 && g >= 350 && g <= 850) {
    collision = true;
  }
  if (g <= 0) {
    collision = true;
  }
  if (g >= 950) {
    collision = true;
  }
  if (collision == true) {
    background(0);
    text("GAME OVER", 450, 500);
    x = 400;
    x2 = 700;
    x3 = 900;
  } else if (collision == false) {
    fill(255);
    text(Time, 20, 60);
    Time = Time + .01;
  }
  g = g + 2;
  x2  = x2 - 2;
  if (x2 == 0) {
    x2 = 700;
    x2 = (int) random(875, 950);
  }
  x = x - 2;
  if (x == 0) {
    x = 400;
    x = (int) random(875, 950);
  }
  x3 = x3 - 2;
  if ( x3 == 0) {
    x3 = 700;
    x3 = (int) random(875, 950);
  }
  random(3);
  fill(255);
}
void keyPressed() {
  if (keyCode == UP) {
    g = g - 50;
  }
}
