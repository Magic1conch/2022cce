void setup(){
  size(400,400);
}
int result=0;
void draw(){
  background(#5E86C1);
  if(dist(mouseX,mouseY,300,300)<50)fill(176,196,222);
  else fill(248,248,255);
  ellipse(300,300,100,100);
  
  fill(0);
  textSize(30);
  text("Press Me",300-50,300);
  if(mousePressed)result=int(random(10));
  text(result,100,200);
}
