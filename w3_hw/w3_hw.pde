ArrayList<Walker> walkerClones = new ArrayList<Walker> ();
ArrayList<WalkerLine> walkerLineClones = new ArrayList<WalkerLine> ();
ArrayList<WalkerRect> walkerRectClones = new ArrayList<WalkerRect> ();
ArrayList<WalkerCircle> walkerCircleClones = new ArrayList <WalkerCircle> ();

int walkerCloneNumber=250;
int walkerLineClonesNum=250;
int walkerRectClonesNum=250;
int walkerCircleClonesNum=250;

void setup() {
  size(600, 600);
  background(255);

  for (int i=0; i < walkerCloneNumber; i++) {
    Walker c = new Walker();

    walkerClones.add(c);
    walkerClones.get(i).x = int(random(width));
    walkerClones.get(i).y = int(random(height));
  }

  for (int k=0; k<walkerLineClonesNum; k++) {
    WalkerLine n = new WalkerLine();

    walkerLineClones.add(n);
    walkerLineClones.get(k).x=int(random(500));
    walkerLineClones.get(k).y=int(random(300));
  }

  for (int a=0; a<walkerRectClonesNum; a++) {
    WalkerRect b = new WalkerRect();

    walkerRectClones.add(b);
    walkerRectClones.get(a).x=int(random(width));
    walkerRectClones.get(a).y= 500;
  }
  
  for(int m=0; m<walkerCircleClonesNum; m++)  {
    WalkerCircle z = new WalkerCircle();
    
    walkerCircleClones.add(z);
    walkerCircleClones.get(m).x=500;
    walkerCircleClones.get(m).y=int(random(height));
  }
}
void draw() {
  for ( int i=0; i<walkerCloneNumber; i++) {
    walkerClones.get(i).step();
    walkerClones.get(i).display();
  }
  for (int k=0; k<walkerLineClonesNum; k++) {
    walkerLineClones.get(k).step();
    walkerLineClones.get(k).display();
  }

  for (int a=0; a<walkerRectClonesNum; a++) {
    walkerRectClones.get(a).step();
    walkerRectClones.get(a).display();
  }

  for(int m=0; m<walkerCircleClonesNum; m++)  {
  walkerCircleClones.get(m).step();
  walkerCircleClones.get(m).display();
  }
}