void setup(){
  size(400,400);
  background(#FFB3E6);
}
void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
void keyPressed(){
  if(key=='1')stroke(230,230,250);
  if(key=='2')stroke(86,134,191);
}
