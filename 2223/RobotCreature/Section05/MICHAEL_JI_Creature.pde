//Michael Ji, 10/10/2022, No sources, sorry for the short code, most of my project was not saved. 
//It's a robot on Mars, with an arm for drilling/laser cutting, and a light in the front. There are wheels to move around and a solar panel on the head. 

size(1200, 800);
background(0, 0, 80);

//body
fill(90, 90, 90);
rect(350, 475, 400, 200);
fill(255, 255, 0);
circle(700, 600, 50);
fill(90, 90, 90);

//neck
rect(500, 400, 75, 80);

//head
rect(425, 300, 225, 100);
fill(0, 0, 0);
triangle(425, 300, 650, 300, 450, 250);

//robot arm

fill(100, 100, 100);
rect(700, 475, 200, 40);
rect(850, 515, 40, 100);
triangle(850, 615, 870, 615, 860, 650);
strokeWeight(4);
stroke(255, 0, 0);
line(875, 615, 875, 900);
stroke(0, 0, 0);
fill(214, 88, 86);
circle(500, 5250, 9000);


//wheels
fill(0, 0, 0);
circle(350, 690, 130);
circle(480, 690, 130);
circle(610, 690, 130);
circle(740, 690, 130);

fill(100, 100, 100); 
circle(350, 690, 100);
circle(480, 690, 100);
circle(610, 690, 100);
circle(740, 690, 100);
