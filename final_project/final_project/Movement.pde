PVector ploc = new PVector (bwidth/2, bheight/2);
PVector pacc = new PVector (0, 0);

PVector left = new PVector (-5, 0);
PVector right = new PVector (5, 0);
PVector up = new PVector (0, -5);
PVector down = new PVector (0, 5);

int timedelay = 10;    //frames between accepting moves

void runmove() {
  keyPressed();
  updateloc();
  checkoffscreen();

  fill(255,0,0);
  ellipse(ploc.x, ploc.y, diam, diam);
}


void keyPressed() {
  if (keyPressed) {
    if (key==CODED) {
      if (keyCode==LEFT) {
        pacc.add(left);
        ploc.add(pacc);
      }
      if (keyCode==RIGHT) {
        pacc.add(right);
        ploc.add(pacc);
      }
      if (keyCode==UP) {
        pacc.add(up);
        ploc.add(pacc);
      }
      if (keyCode==DOWN) {
        pacc.add(down);
        ploc.add(pacc);
      }
    }

    if (pacc.x>5) {
      pacc = new PVector (5, 0);
    }
    if (pacc.x <-5) {
      pacc = new PVector (-5, 0);
    }

    if (pacc.y>5) {
      pacc = new PVector (0, 5);
    }
    if (pacc.y<-5) {
      pacc = new PVector (0, -5);
    }
  }
}

void updateloc() {
  //  ploc.add(pacc);
}

void checkoffscreen() {
  if (ploc.x>(fieldwidth+((width-fieldwidth)/2)-(diam/2)) ) {
    pacc.x=0;
    ploc.x=ploc.x-9;
  }
  if (ploc.x<((width-fieldwidth)/2)+diam/2) {
    pacc.x=0;
    ploc.x=ploc.x+9;
  }

  if (ploc.y>fieldheight+((height-fieldheight)/2)-diam/2 ) {
    pacc.y=0; 
    ploc.y=ploc.y-9;
  }

  if (ploc.y<((height-fieldheight)/2)+diam/2) {
    pacc.y=0;
    ploc.y=ploc.y+9;
  }
}

