float x; //location of snow
float y; //location of snow
int sizeSnow;
int treeColor;
int treeColor2;
String userChoice = "Not Chosen";


void setup () {
  size (800, 800);
  textSize (10);
  treeColor = (int) random (0, 255);
  treeColor2 = (int) random (0, 255);
}

void draw () {
  x = random (800);
  y = random (800);
  sizeSnow = (int) random (1, 30);

  background ( 117, 158, 202);
  stroke (210, 180, 140);
  fill (210, 180, 140);
  ellipse (305, 440, 20, 30); // left ear
  ellipse (395, 440, 20, 30); //right ear


  triangle (295, 440, 290, 415, 307, 430); //top of left ear
  triangle (405, 440, 410, 415, 393, 430); // top of right ear


  strokeWeight (40);
  stroke (0, 128, 0);
  line (340, 490, 290, 530); //left arm
  line (360, 490, 410, 530); //right arm

  strokeWeight (15);
  stroke (217, 33, 33);
  line (290, 510, 320, 535);//red sleeve thing
  line (410, 510, 380, 535);//right red sleeve decor

  stroke (0);
  fill (0, 128, 0);
  strokeWeight (2);
  triangle (290, 560, 350, 450, 410, 560); // body/sweater

  fill (217, 33, 33);
  rect (287, 560, 125, 15);//bottom of body

  fill (0, 128, 0);
  rect (310, 575, 40, 52); //left part of leg
  rect (350, 575, 40, 52); //right part of leg

  stroke (217, 33, 33);
  fill (217, 33, 33);
  triangle (302, 620, 349, 620, 344, 660);  //top part of left shoe
  triangle (398, 620, 350, 620, 355, 660);//top part of right shoe

  ellipse (310, 655, 70, 30); //bottom part of left shoe
  ellipse (390, 655, 70, 30); //bottom part of right shoe

  triangle (275, 655, 285, 635, 285, 660);  //last part of left shoe
  triangle (425, 655, 415, 635, 415, 660);//last part of right shoe

  stroke (0);
  fill (255, 206, 86);
  circle (285, 636, 10);//gold tip of left shoe
  circle (415, 635, 10);//gold tip of right shoe


  stroke (0);
  fill (255, 206, 86);
  push ();
  translate (87, 130);
  scale (0.75);

  triangle (320, 540, 350, 515, 380, 540); //yellow tree design
  triangle (325, 527, 350, 505, 375, 527); //yellow tree design
  triangle (330, 515, 350, 495, 370, 515);  //yellow tree design
  pop ();


  strokeWeight (1);
  stroke (210, 180, 140);
  fill (230, 200, 160);
  circle (350, 420, 100); //face
  stroke (0, 128, 0);


  stroke (0, 0, 0);
  fill (0, 0, 0);
  circle (350, 430, 70);//smile
  stroke (230, 200, 160);
  fill (230, 200, 160);
  circle (350, 428, 69); //covered face
  rect (310, 420, 80, 30);//covering black circle


  stroke (0);
  strokeWeight (2);

  fill (210, 180, 140);
  ellipse (352, 448, 17, 10); //nose

  fill (0); //black eye
  ellipse (333, 430, 12, 14); //eyes
  ellipse (370, 430, 12, 14); //eyes

  fill (255); //color white for eye
  ellipse (331, 430, 5, 9); //eyeball
  ellipse (368, 430, 5, 9);  //eyeball

  stroke (0, 128, 0);
  fill (0, 128, 0);
  ellipse (352, 389, 105, 58); //bottom of hat
  triangle (300, 400, 430, 305, 400, 400); //tip of hat
  stroke (0);
  fill (217, 33, 3);
  circle (430, 305, 15);//red circle tip
  stroke (0);
  fill (217, 33, 33);
  rect (298, 401, 105, 17.5); //red bottom of hat


  //present elf is holding
  fill (72, 138, 199);
  rect (240, 540, 60, 60); //box
  fill (53, 126, 215);
  rect (265, 540, 10, 60); //stripe


  push (); //press to open present
  if (userChoice == "press") {
    fill (240, 128, 128);
  } else {
    fill (255);
  }
  circle (270, 575, 30);
  fill (0);
  text ("press", 260, 578);

  if (userChoice == "press") {
    fill (53, 126, 215);
    rect (240, 540, -10, -70);
  } else {
    fill (53, 126, 215);
    rect (235, 540, 70, 10);
  }

  pop ();

  stroke (treeColor, 145, treeColor2);
  fill ( treeColor, 145, treeColor2);
  triangle (540, 401, 630, 200, 720, 401);
  triangle (520, 550, 630, 200, 740, 550);
  triangle (500, 700, 630, 280, 760, 700); //christmas tree

  stroke (200, 157, 124);
  fill (200, 157, 124);
  rect ( 580, 701, 90, 70);     //tree stump

  stroke (0);
  fill (54, 80, 216);
  circle ( 600, 350, 20);  //ornaments
  fill ( 133, 12, 180);
  circle ( 640, 290, 18);  //ornaments
  fill ( 200, 34, 177);
  circle ( 630, 420, 20);
  fill ( 33, 181, 121);
  circle ( 670, 370, 18);
  fill ( 10, 190, 29);
  circle ( 580, 460, 20);
  fill ( 201, 14, 52);
  circle ( 660, 490, 20);
  fill ( 18, 81, 245);
  circle ( 610, 520, 18);
  fill ( 240, 90, 12);
  circle ( 580, 580, 20);
  fill ( 133, 12, 180);
  circle ( 660, 550, 18);
  fill ( 12, 189, 201);
  circle ( 630, 610, 20);
  fill (255, 192, 201);
  circle ( 550, 640, 17);
  fill (10, 60, 32);
  circle ( 690, 630, 20);
  fill (195, 255, 200);
  circle ( 610, 670, 20); //ornaments
  fill (210, 145, 255);
  circle ( 670, 685, 18); //ornaments

  //star at top of tree
  stroke (252, 238, 167);
  fill (252, 238, 167);
  triangle (626, 180, 630, 170, 633, 180);
  triangle (620, 183, 630, 178, 630, 188);
  triangle (640, 183, 630, 178, 630, 188);
  triangle (628, 182, 620, 195, 628, 190);
  triangle (630, 180, 637, 195, 628, 190);

  //reindeer
  stroke(0);
  fill (155, 103, 60);

  ellipse (170, 523, 9, 12);//tail
  circle (145, 540, 48); //body
  rect (100, 520, 40, 50); //body
  stroke(155, 103, 60);
  ellipse (100, 555, 24, 80); //left front leg
  ellipse (135, 555, 21, 75); //right front leg
  ellipse (163, 550, 18, 65); // back right leg

  stroke (43, 29, 20);
  fill (43, 29, 20);
  arc(100, 587, 17, 17, 0, PI); //left hoove
  arc (135, 584, 16, 16, 0, PI); //right hoove
  arc (163, 576, 13, 13, 0, PI); //back hoove

  stroke (155, 103, 60);
  fill (155, 103, 60);
  ellipse (120, 480, 70, 100); //head
  stroke (200, 157, 124);
  fill (200, 157, 124);
  ellipse (120, 500, 100, 60); //snout
  stroke (0);
  fill (0);
  ellipse (120, 510, 30, 20); //circle to create smile
  stroke (200, 157, 124);
  fill (200, 157, 124);
  ellipse (120, 505, 35, 25);  // cover for circle to create smile

  stroke (0);
  fill (226, 110, 110);
  ellipse (120, 490, 30, 20); // nose

  //eyes to reindeer
  strokeWeight (0);
  fill (0); //black eye
  ellipse (107, 458, 12, 14); //eyes
  ellipse (135, 458, 12, 14); //eyes

  fill (255); //color white for eye
  ellipse (105, 458, 3, 4); //eyeball
  ellipse (133, 458, 3, 4);  //eyeball

  strokeWeight (8);
  stroke (155, 103, 60);
  line (100, 435, 80, 390);  //antler
  line (140, 435, 160, 390); //antler
  strokeWeight (5);
  line ( 92, 425, 77, 415);
  line ( 92, 405, 100, 395);
  line ( 145, 400, 150, 405);
  line ( 147, 425, 165, 416);


  //to make it snow press on nose
  if (userChoice == "nose") {
    stroke (255);
    fill (255);
    circle (x, y, sizeSnow);
  } else {
    text ("click", 111, 494);
    stroke (255, 206, 86);
    fill (252, 244, 163);
    circle (100, 100, 110);
    strokeWeight (15);
    line ( 150, 150, 180, 180); //ray
    line (100, 170, 100, 210); //ray
    line (50, 50, 20, 20);
    line (50, 150, 20, 180);
    line (100, 30, 100, 0);
    line (150, 50, 180, 20);
    line (170, 100, 210, 100);
    line (30, 100, 0, 100);
  }
}


void mousePressed () {
  if (mouseX > 250 && mouseX < 300 && mouseY > 550 && mouseY < 600) {

    userChoice = "press";
  } else if (mouseX > 90 && mouseX < 160 && mouseY > 450 && mouseY < 550) {

    userChoice = "nose";
  } else {
    userChoice = "Not Chosen";
  }

  // my animation has several random variables, for example the color of the christmas tree
  // is random each time the project is open.
  // Additionally, by pressing the present that the elf holds in their hand,
  // the box will open and the symbol will turn to a red color.
  // Also when clicking on the reindeer's nose, the sun that was in the corner
  // will disappear and snow with randomized sizes and locations will appear.

  // I originally attempted to randomize the location of the ornaments, however this failed
  // since they needed to stay on the christmas tree which is made up of three triangle
  // and so it wasn't possible to randomize the x and y location of the ornaments
  // since they needed to be contained to a triangle as opposed to a square which would allow for me to
  // randomize the x and y coordinates without worrying about if the circle wasn't going to land up in the shape

  //i was just inspired by the holidays and so I wanted to make it winter/christmas themed!
}
