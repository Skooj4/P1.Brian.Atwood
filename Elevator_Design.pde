 
int circle1X, circle1Y, circle2X, circle2Y, circle3X, circle3Y, circle4X, circle4Y, circle5X, circle5Y, circle6X, circle6Y, rectW, rectH, rectX, rectY;// Position of circle button     // Diameter of rect
int circleSize = 93;   // Diameter of circle
color rectColor, circleColor, baseColor;
color circleHighlight;
color currentColor;
String text = "";
boolean circle6Over = false;
boolean circle5Over = false;
boolean circle4Over = false;
boolean circle3Over = false;
boolean circle2Over = false;
boolean circleOver = false;

void setup() {
  size(400, 800);
  circleColor = color(255);
  circleHighlight = color(204);
  baseColor = color(102);
  currentColor = baseColor;
  
  rectW = 300;
  rectH = 120;
  
  rectX = 50;
  rectY = 100;
  
  circle1X = 100;
  circle1Y = 350;
  
  circle2X = 300;
  circle2Y = 350;
  
  circle3X = 100;
  circle3Y = 450;
  
  circle4X = 300;
  circle4Y = 450;
  
  circle5X = 100;
  circle5Y = 650;
  
  circle6X = 300;
  circle6Y = 650;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
   stroke(0);
   
  rect(rectX, rectY, rectW, rectH);
  textSize(80);
  fill(0, 117, 28);
  text(text, 75, 185);
 
  if (circle6Over) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  } 
  ellipse(circle6X, circle6Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text(">||<", 270, 665);
  
  if (circle5Over) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  ellipse(circle5X, circle5Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text("<||>", 68, 665);
  
  if (circle4Over) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  ellipse(circle4X, circle4Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text("G", 290, 465);
  
  if (circle3Over) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  ellipse(circle3X, circle3Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text("B", 90, 465);
  
  if (circle2Over) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text("3", 290, 365);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  ellipse(circle1X, circle1Y, circleSize, circleSize);
  textSize(45);
  fill(0, 0, 0);
  text("2", 90, 365);
}

void update(int x, int y) {
  if ( overCircle(circle1X, circle1Y, circleSize) ) {
    circleOver = true;
    circle2Over = circle3Over = circle4Over = circle5Over = circle6Over = false;
    
  } else if ( circle2Over(circle2Y, circle2Y, circleSize) ) {
    circle2Over = true;
    circleOver = circle3Over = circle4Over = circle5Over = circle6Over = false;
    
  } else if ( circle3Over(circle2Y, circle2Y, circleSize) ) {
    circle3Over = true;
    circleOver = circle2Over = circle4Over = circle5Over = circle6Over = false;
    
  } else if ( circle4Over(circle2Y, circle2Y, circleSize) ) {
    circle4Over = true;
    circleOver = circle2Over = circle3Over = circle5Over = circle6Over = false;
    
  } else if ( circle5Over(circle2Y, circle2Y, circleSize) ) {
    circle5Over = true;
    circleOver = circle2Over = circle3Over = circle4Over = circle6Over = false;
    
  } else if ( circle6Over(circle2Y, circle2Y, circleSize) ) {
    circle6Over = true;
    circleOver = circle2Over = circle3Over = circle4Over = circle5Over = false;
    
  } else {
    circleOver = circle2Over = circle3Over = circle4Over = circle5Over = circle6Over = false;
  }
}
void mousePressed() {
  if (circleOver) {
    text = "2";
  }
  if (circle2Over) {
    text = "3";
  }
  if (circle3Over) {
    text = "B";
  }
  if (circle4Over) {
    text = "G";
  }
  if (circle5Over) {
    text = "<| |>";
  }
  if (circle6Over) {
    text = ">| |<";
  }
}

boolean circle6Over(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 300 - diameter/2 && mouseX <= 300 + diameter/2 && mouseY >= 650 - diameter/2 && mouseY <= 650 + diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean circle5Over(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 100 - diameter/2 && mouseX <= 100 + diameter/2 && mouseY >= 650 - diameter/2 && mouseY <= 650 + diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean circle4Over(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 300 - diameter/2 && mouseX <= 300 + diameter/2 && mouseY >= 450 - diameter/2 && mouseY <= 450 + diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean circle3Over(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 100 - diameter/2 && mouseX <= 100 + diameter/2 && mouseY >= 450 - diameter/2 && mouseY <= 450 + diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean circle2Over(int x, int y, int diameter)  {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 300 - diameter/2 && mouseX <= 300 + diameter/2 && mouseY >= 350 - diameter/2 && mouseY <= 350 + diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (mouseX >= 100 - diameter/2 && mouseX <= 100 + diameter/2 && mouseY >= 350 - diameter/2 && mouseY <= 350 + diameter/2) {
    return true;
  } else {
    return false;
  }
}
