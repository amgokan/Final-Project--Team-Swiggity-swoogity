int bwidth = 1400;
int bheight = 800;

int fieldwidth = 1300;
int fieldheight =700;

int diam = 20;

int shottimer=0;
int shotdelay=3;     //sets the amount of frames berween shots

ArrayList<Bullet> bullets;


int timer=0;

void setup() {
  size(bwidth, bheight);
  bullets = new ArrayList<Bullet>();
}

void draw() {
  println("ShotTimer: " + shottimer + ", ShotDelay: " + shotdelay);
  println("Number of Bullets: " + bullets.size()); 
  timer++;
  fill(0);
  shottimer++;
  background(255);
  displayUI();

  for (int i = 0; i < bullets.size (); i++) {            
    Bullet b = bullets.get(i);  
    b.runbullet();
     if (b.isDead()) {                                        //check if its dead
      println("dead");
      bullets.remove(i);                                  //remove dead particle
    }
  }
  if (mousePressed) {
    if (shottimer>shotdelay) {
      //      println("fffff");


      bullets.add(new Bullet(new PVector(width/2, height/2)));        
      shottimer=0;
    }
  }





  runmove();
  shooting();
}

