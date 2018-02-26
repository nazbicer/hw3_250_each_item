class WalkerRect{
int x;
int y;
int r;
int g;
int b;
WalkerRect(){
x=width/2;
y=height/2;
r=int(random(255));
g=int(random(255));
b=int(random(255));


}

void display(){
noStroke();
fill(r,g,b,55);
rect(x,y,100,100);
}
void step(){
float r=random(1);
if(r<0.4) {
  x++;
}else if(r<0.6) {
  x--;
}else if(r<0.8)  {
  y++;
}else{
  y--;
}
}
    
}