PVector heading = new PVector (ploc.x-mouseX, ploc.y-mouseY);
PVector direction= new PVector ();
void shooting() {
  aim();
  waitbetweenshots();
  project();
  mouseClicked();
}

void aim() {
  heading = new PVector (ploc.x-mouseX, ploc.y-mouseY);
  fill(0,255,0);
  ellipse(mouseX, mouseY, 12, 12); 
  heading.normalize();
  heading.mult(200);
  PVector direction = new PVector (ploc.x-heading.x, ploc.y-heading.y);
  line(ploc.x, ploc.y, direction.x, direction.y);
}

void shoot() {
  //spawn a bullet/particle
}

void waitbetweenshots() {
}

void project() {
}



