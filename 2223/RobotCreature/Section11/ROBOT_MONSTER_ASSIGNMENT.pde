void setup() { // called once
size (600,600);
background(50,60,50);
}

void draw() { // called in a loop
//his name is gerald :)
//eyes
fill(255);
fill(255); 
circle(50,50,70); 
//pupil
fill(0);
circle(50,50,25);
//white
fill(255);
circle(120,50,70);
//pupil
fill(0);
circle(120,50,20);
//nose
triangle(150,80,67,68,69,75);
//outline
strokeWeight(4);
stroke(0);
//mouth
fill(0);
arc(90,150,100,100, radians(180), radians(360));






}
