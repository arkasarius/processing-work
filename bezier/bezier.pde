public class walker {
  int px, py;
  int ll, lr, lt, lb;
  walker() {
    px=width/2;
    py=height/2;
    ll=width/4;
    lr=width/4*3;
    lt=height/4;
    lb=height/4*3;
  }
  void run() {
    int a = (int)random(4);
    if (a==0) {
      px+=10;
    }
    if (a==1) {
      px-=10;
    }
    if (a==2) {
      py+=10;
    }
    if (a==3) {
      px-=10;
    }
    if (px<ll) {
      px=lr;
    }
    if (px>lr) {
      px=ll;
    }
    if (py>lb) {
      py=lt;
    }
    if (py<lt) {
      py=lb;
    }
  }
}
walker a, b;
void setup() {
  size(1000, 1000);
  noFill();
  background(0);
  a=new walker();
  b=new walker();
  colorMode(HSB,360,100,100,100);
}
void draw() {
  stroke(frameCount%360,100,100);
  ellipse(a.px, a.py, 5, 5);
  ellipse(b.px, b.py, 5, 5);
  // bezier(0, 0, 0, 1000, a.px, a.px, a.py, a.py);
  // bezier(0, 1000, 0, 1000, a.px, a.px, a.py, a.py);
  //bezier(1000, 0, 0, 1000, a.px, a.px, a.py, a.py);
  //bezier(1000, 1000, 0, 1000, a.px, a.px, a.py, a.py);
  bezier(a.px, a.py, b.px, b.py, a.px, a.px, b.py, b.py);
  fill(0, 20);
  rect(0, 0, 1000, 1000);
  noFill();
  a.run();
  b.run();
}
