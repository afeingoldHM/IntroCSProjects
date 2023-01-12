//For my animation, I chose to make a ferris wheel accompanied by a roller coaster.
//This choice was influenced by my peer, Malina, who helped me come up with the idea.
//My code allows the user to click the button that says "Press" to randomize the
//number of people in each car as well as randomize the color of the cars themselves.
//Although I tried, I was not able to reverse-rotate each individual car so that they remained upright
//because of the way that I formatted my code.  There were too many objects to rotate at once, so translating and un-rotating
//was very difficult to figure out.  Had I added this earlier in the process,
//I would have been able to apply my knowledge, and I woudl have been able to successfully
//integrate this detail into my code.  I am aware, however, of how to do this within Processing;
//just not in my specific set of code.

int ferrisX = 50;
int ferrisY = 200;
int ferrisR = 10;
int rollerR = 5;
int rollerX = -50;
int rollerY = -900;
int p; //people
int colors;
float carR;
float carG;
float carB;
String carColor = "";


void setup() {
  size(1425, 800);
}

void draw() {
  background(255);
  strokeWeight(5);

  //ferris wheel stand
  rect(225, 575, 150, 150);
  circle(300, 350, 500);
  fill(255);


  //roller coaster track
  circle(1700, 900, 1700);

  //roller coaster cars
  push();
  translate(1700, 900);
  rotate(radians(-rollerR));
  fill(carR, carG, carB);
  rect(rollerX, rollerY, 150, 50, 10);
  if (p == 1) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
  } else if (p == 2) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
  } else if (p == 4) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
  } else if (p == 6) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
  } else if (p == 3) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
    circle(rollerX+115, rollerY-15, 25);
    circle(rollerX+140, rollerY-15, 25);
  } else if (p == 5) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
    circle(rollerX+115, rollerY-15, 25);
  }
  pop();

  push();
  translate(1700, 900);
  rotate(radians(-rollerR-180));
  fill(carR, carG, carB);
  rect(rollerX, rollerY, 150, 50, 10);
  if (p == 1) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
  } else if (p == 2) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
  } else if (p == 4) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
  } else if (p == 5) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
  } else if (p == 3) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
    circle(rollerX+115, rollerY-15, 25);
    circle(rollerX+140, rollerY-15, 25);
  } else if (p == 6) {
    fill(255);
    circle(rollerX+15, rollerY-15, 25);
    circle(rollerX+40, rollerY-15, 25);
    circle(rollerX+65, rollerY-15, 25);
    circle(rollerX+90, rollerY-15, 25);
    circle(rollerX+115, rollerY-15, 25);
  }
  pop();

  //ferris wheel cars
  push();
  translate(300, 350);
  rotate(radians(ferrisR));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  } else if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 4) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 5) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+60));
  line(ferrisX+50, ferrisY, 0, 0);
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 5) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+120));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 4) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  } else if (p == 5) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+180));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  } else if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  } else if (p == 4) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+240));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 4) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 5) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+180));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  } else if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  } else if (p == 5) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  }
  pop();

  push();
  translate(300, 350);
  rotate(radians(ferrisR+300));
  fill(carR, carG, carB);
  rect(ferrisX, ferrisY, 100, 50, 10);
  line(ferrisX+50, ferrisY, 0, 0);
  if (p == 1) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
  } else if (p == 2) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
  } else if (p == 3) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
  } else if (p == 4) {
    fill(255);
    circle(ferrisX+15, ferrisY+65, 25);
    circle(ferrisX+40, ferrisY+65, 25);
    circle(ferrisX+65, ferrisY+65, 25);
    circle(ferrisX+90, ferrisY+65, 25);
  }
  pop();

  //continuously rotating objects
  ferrisR = ferrisR+1;
  rollerR = rollerR+1;

  //color choice text
  push();
  strokeWeight(10);
  textSize(30);
  fill(0);
  text("You chose " + carColor + ".", 25, 45);
  pop();

  //button for randoms
  push();
  fill(200, 0, 0);
  rect(260, 675, 80, 30, 10);
  fill(0);
  textSize(25);
  text("Press", 272.5, 699);
  pop();
}

void mousePressed() {
  if (colors == 0) {
    carColor = "light blue";
    carR = 0;
    carG = 100;
    carB = 255;
  } else if (colors == 1) {
    carColor = "light purple";
    carR = 150;
    carG = 100;
    carB = 255;
  } else if (colors == 2) {
    carColor = "light pink";
    carR = 255;
    carG = 150;
    carB = 255;
  } else if (colors == 3) {
    carColor = "magenta";
    carR = 200;
    carG = 0;
    carB = 255;
  } else if (colors == 4) {
    carColor = "dark pink";
    carR = 150;
    carG = 50;
    carB = 100;
  } else if (colors == 5) {
    carColor = "dark blue";
    carR = 0;
    carG = 0;
    carB = 175;
  }

  if (mouseX >= 260 && mouseY >= 675 && mouseX <= 340 && mouseY <= 705) {
    //number of people randomization
    p = (int) random(1, 6);
    //colors randomization
    colors = (int) random(5);
  }
}
