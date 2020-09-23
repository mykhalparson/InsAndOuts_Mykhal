// Mykhal Parson - "The Ollie"
//Press the mouse to change the background of the sketch and to "level" the board to complete the ollie
//Run the code again to get a new background color

//random colors will be assigned
float r = random(250); 
float g = random(250); 
float b = random(250); 

//radius of skateboard wheels
int rad = 20;

void setup (){

background(0,250,0);

//size (width,height);
size (1080,720);
}


void draw(){ 

if (mousePressed){
background(r,g,b);

//Higher Box: rect (x1, y1, width, height);
fill(0);
rect(0, 550, 450, 350);

//Lower Box: rect (x1, y1, width, height);
fill(255);
rect(700, 620, 480, 200);

//skateboard middle
strokeWeight(3.25);
line (500,400,620,400);

//new skateboard tail (left)
line (485,385, 500,400);

//new skateboard tail (right)
line (620,400, 635, 385);

//wheel1 (right)
//circle(x, y, radius)
strokeWeight(2);
fill(255,0,0);
circle(605,415,rad);

//wheel2 (left)
//circle(x, y, radius)
strokeWeight(2);
fill(255,0,0);
circle(515,415,rad);

} else {
background(0,250,0);

//Higher Box: rect (x1, y1, width, height);
fill(0);
rect(0, 550, 450, 350);

//Lower Box: rect (x1, y1, width, height);
fill(255);
rect(700, 620, 480, 200);

//skateboard tail (right)
// line (x1,y1, x2, y2) 
strokeWeight(3.25);
line (600,375,608,355);

//skateboard tail (left)
// line (x1,y1, x2, y2) 
strokeWeight(3.25);
line (500,450, 480,450);

//skateboard
// line (x1,y1, x2, y2) 
strokeWeight(3.25);
line (500,450,600,375);

//wheel1 (right)
//circle(x, y, radius)
strokeWeight(2);
fill(255,0,0);
circle(598,395,20);

//wheel2 (left)
//circle(x, y, radius)
strokeWeight(2);
fill(255,0,0);
circle(520,455,20);
}

}
