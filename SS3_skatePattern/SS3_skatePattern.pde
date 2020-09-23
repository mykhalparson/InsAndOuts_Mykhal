// Mykhal Parson - "The Ollie"
//Press the mouse to change the background of the sketch,"level" the board to 
//complete the ollie, and raise the bridge
//move the mouse northeast/top right to add more squares
//Run the code again to get a new background color

//random colors will be assigned
float r = random(250); 
float g = random(250); 
float b = random(250); 
float firstwheel = 515;

int rad = 20; //radius of skateboard wheels

void setup (){

background(0,250,0);

//size (width,height);
size (1080,720);
}


void draw(){ 

//background color changes, board is leveled
if (mousePressed){

background(r,g,b);
 
//Higher Box: rect (x1, y1, width, height);
fill(255);
rect(0, 550, 450, 350);

//Lower Box: rect (x1, y1, width, height);
fill(0);
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

fill(0,255,0);
//creates "bridge"
for (float i = 515; i<730; i+=25){
//square(firstwheel, firstwheel-87, 25);
square(i-50, firstwheel-87, 25);
}

} else {

// MAIN SKATEBOARD
background(0,250,0);

if (mouseX > width/2 && mouseY < height/2){
background(b+15,g+15,r+15);
}

if (mouseX<width/2 && mouseY> height/2){
background(b-35,g-35,r-35);

}

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

fill(255,0,0);
//creates "bridge"
for (float i = 515; i<750; i+=25){
//square(firstwheel, firstwheel-87, 25);
square(i-65, firstwheel+105, 25);
  }
}

if (mousePressed && mouseX>width/2){

background(255);
 
//Higher Box: rect (x1, y1, width, height);
fill(255);
rect(0, 550, 450, 350);

//Lower Box: rect (x1, y1, width, height);
fill(0);
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

fill(0,255,0);
//creates "bridge"
for (float i = 515; i<1200; i+=25){
//square(firstwheel, firstwheel-87, 25);
square(i-50, firstwheel-87, 25);
}

} 


}
