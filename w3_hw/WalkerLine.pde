class WalkerLine{
int x;
int y;
int r;
int g;
int b;
WalkerLine(){
x=width/2;
y=height/2;
r=int(random(255));
g=int(random(255));
b=int(random(255));


}

void display(){
stroke(r,g,b,60);

line(x,y,55,55);
}
void step(){
float r=random(1);
if(r<0.3) {
  y--;
}else if(r<0.5) {
  y++;
}else if(r<0.6)  {
  x++;
}else{
  x--;
}
}
    
}