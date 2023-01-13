int k;
int x;
int y = 1;
int dx = 1;
int dy = 1;
int xy = 1;
int yx = 1;
int clr = 1;
int cry = 1;
int crdy = 1;
String userchoice = "CLOSED";
float CircleY = 0;
float speedY = 1;

void setup () {
  
  size (1000,1000);

}

void draw () {
 
  
rain();


fill(0,0,0);
circle(567, CircleY, 25);
circle(767, CircleY, 25);
circle(567, CircleY + 200, 25);
circle(767, CircleY + 200, 25);

fill(243, 243, 10);
  rect(width/2 + 67, CircleY - 80, 200, 400);
  fill(0,0,100);
  rect(567, CircleY + 55, 200, 80);
  

  CircleY = CircleY + speedY;
  
  if(CircleY > height) {
    speedY = -abs(speedY);
  }
  if(CircleY < 0) {
    speedY = abs(speedY);
  }
  

strokeWeight(4);
stroke(0);
fill(255, 213, 154);
rect(567, CircleY, 200, 50);
fill(0);
textSize(40);
text(userchoice, 620, CircleY + 40);


}
  void mousePressed () {
    if (mouseX > width /2) {
      userchoice = "OPEN"; 
    }
      else if (mouseX < width / 2 )  {
      userchoice = "BUSY";
    }
   
    }
      
      
      
      
      //  my animation is a taxi moving up and down a road while rain falls from a birdseye view. The rain splatters randomly in different shapes, sizes, and colors, replicating real life.The taxi goes backwards and fowards based off the inspiration, as the taxi had to back up in order to let a passenger out in the correct location. 
      // when you press the left side of the screen, the taxi is busy, and when you hit the right side of the screen, the taxi becomes open
// I tried to create a person who got in the taxi, but I was unsuccessful as the birdseye design was too flawed. Also, it would not match the user imput of "busy, open, and closed". 
     // the inspiration for this project was because I saw this the other day in central park, and it looked like something I could replicate
     // a friend gave me inspiration for the rain function and the circleY motion
      
      
