r a;
void setup () {
  size (800, 500);
  a= new r();
}

void draw() {
  work();
  shape(a.s, 100, 100);
  shape(a.l, 300, 100);
  shape(a.t, 500, 100);
  shape(a.r, 700, 100);
  noLoop();
}
void work() {
  color x=color((int)random(255), (int)random(255), (int)random(255));
  a.s.setFill(x);
  x=color((int)random(255), (int)random(255), (int)random(255));
  a.l.setFill(x);
  x=color((int)random(255), (int)random(255), (int)random(255));
  a.t.setFill(x);
  x=color((int)random(255), (int)random(255), (int)random(255));
  a.r.setFill(x);
}
