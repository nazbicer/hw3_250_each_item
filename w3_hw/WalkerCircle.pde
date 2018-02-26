class WalkerCircle{
int x;
int y;
int r;
int g;
int b;
WalkerCircle(){
x=width/2;
y=height/2;
r=int(random(255));
g=int(random(255));
b=int(random(255));


}

void display(){
noStroke();
fill(r,g,b,55);
ellipse(x,y,107,107);
}
void step(){
float r=random(1);
if(r<0.7) {
  y++;
}else if(r<0.8) {
  y--;
}else if(r<0.9)  {
  x++;
}else{
  x--;
}
}
}