int bwidth = 1400;
int bheight = 800;

int fieldwidth = 1300;
int fieldheight =700;

int diam = 20;

int shottimer=0;
int shotdelay=10;     //sets the amount of frames berween shots

void setup() {
  size(bwidth, bheight);
}

void draw() {
  fill(0);
  shottimer++;
  background(255);





  fill(0);
  
  displayUI();
  runmove();
  shooting();
}

