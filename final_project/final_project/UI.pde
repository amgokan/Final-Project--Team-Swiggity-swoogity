PVector goal1;
PVector goal2;

void displayUI() {

  goal1 = new PVector(50, bheight/2);
  goal2 = new PVector(bwidth-50, bheight/2);

  fill(255);
  rect((bwidth-fieldwidth)/2, (bheight-fieldheight)/2, fieldwidth, fieldheight); 
  fill(0);
  fill(170, 170, 170);
  ellipse(50, bheight/2, 100, 100);
  ellipse(bwidth-50, bheight/2, 100, 100);
}

void showendUI() {
  fill(0);
  rect(0, 0, width, height);
}

