PVector ploc = new PVector (scrwidth/2, scrheight/2);
PVector pacc = new PVector (0, 0);

float velocity=5;
float diam = 30;

PVector left = new PVector (-velocity, 0);
PVector right = new PVector (velocity, 0);
PVector down = new PVector (0, velocity);
PVector up = new PVector (0, -velocity);

void runmove() {
  move();
}

void move() {
  background(255); 
  ellipse(ploc.x, ploc.y, diam, diam);
  fill(0);

  if (keyPressed) {
    if (keyCode==LEFT) {
      pacc.add(left);
      ploc.add(pacc);
      pacc.set(0,0);
    } 
    if (keyCode==RIGHT) {
      pacc.add(right);
      
      ploc.add(pacc);
      pacc.set(0,0);
    }
    if (keyCode==UP) {
      pacc.add(up);
       ploc.add(pacc);
      pacc.set(0,0);
    }
    if (keyCode==DOWN) {
      pacc.add(down);
       ploc.add(pacc);
      pacc.set(0,0);
    }

    if (pacc.x>5) {
      pacc.x=5;
    }
    if (pacc.x<-5) {
      pacc.x=-5;
    }
    if (pacc.y>5) {
      pacc.y=5;
    }
    if (pacc.y<-5) {
      pacc.y=-5;
    }
  }
  
}

