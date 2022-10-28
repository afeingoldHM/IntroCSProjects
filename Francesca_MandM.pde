// Francesca Finzi -- 10/10/2022 -- Yellow M&M
//My project features the yellow M&M. 
//He is standing in a dark room with a yellow party hat on.
//He is wearing the classic white M&M shoes, and has the easily recognizable M&M eyebrows. 


background (000000);
size(600,600);


//ground
fill (#646464);
rect(0, 350, 1200, 1200);


//legs
fill(#FFFFFF);
rect(300, 330, 25, 100);

fill(#FFFFFF);
rect(380, 330, 25, 100);

//Body
fill(#FDF857);
circle (352, 250, 200);
textSize(80);
fill(#FFFFFF);
text("M", width / 1.87, height /1.75);


//shoes
fill(#FFFFFF);
circle (310, 410, 50);

fill(#FFFFFF);
circle (395, 410, 50);


//eyes
fill(000000);
circle (310, 220, 30);

fill(000000);
circle (380, 220, 30);

fill(#FFFFFF);
circle (312, 220, 15);

fill(#FFFFFF);
circle (382, 220, 15);


//mouth
fill(000000);
arc(350, 250, 60, 60, 0, PI, CHORD);


//eyebrows
fill (000000);
rect(300, 190, 20, 7);

fill (000000);
rect(368, 190, 20, 7);


//hat
fill (#FDF100);
triangle (350, 130, 400, 170, 300, 170);
