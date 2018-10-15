r a;
void setup () {
  size (500, 500,P3D);
  a= new r();
}

void draw() {
  shape(a.s, 100, 100);
  shape(a.l, 100, 100);
  noLoop();
}
