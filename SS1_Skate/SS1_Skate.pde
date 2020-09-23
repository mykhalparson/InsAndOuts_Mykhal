// Mykhal Parson - "The Ollie"


background(0,250,0);

//size (width,height);
size (1080,720);


//Higher Box: rect (x1, y1, width, height);
fill(0);
rect(0, 550, 450, 350);

//Lower Box: rect (x1, y1, width, height);
fill(255);
rect(700, 620, 480, 200);

// line (x1,y1, x2, y2) 
//skateboard tail (right)
strokeWeight(3.25);
line (600,375,608,355);

// line (x1,y1, x2, y2) 
//skateboard tail (left)
strokeWeight(3.25);
line (500,450, 480,450);


// line (x1,y1, x2, y2) 
//skateboard
strokeWeight(3.25);
line (500,450,600,375);

//wheel1 (right)
//circle(x, y, extent)
strokeWeight(2);
fill(255,0,0);
circle(598,395,20);

//wheel2 (left)
//circle(x, y, extent)
strokeWeight(2);
fill(255,0,0);
circle(520,455,20);
