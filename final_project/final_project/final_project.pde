int bwidth = 1400;
int bheight = 800;

int fieldwidth = 1300;
int fieldheight =700;

int playerdiam = 20;
int enemydiam = 20;

int shottimer=0;
int shotdelay=3;     //sets the amount of frames berween shots

int hitcount=0;
int killcount=0;


ArrayList<Bullet> bullets;

ArrayList<Stanko> stankos;
//ArrayList<Gerstein> gersteins;
//ArrayList<Sanservino> sanservinos;
//ArrayList<DrJ> DrJs;
//ArrayList<Esposito> espositos;

int timer=0;

void setup() {
  size(bwidth, bheight);
  bullets = new ArrayList<Bullet>();
  stankos = new ArrayList <Stanko>();
  for (int i =0; i<50; i++) {
    stankos.add(new Stanko());
  }
}

void draw() {

  //  println("ShotTimer: " + shottimer + ", ShotDelay: " + shotdelay);
  //  println("Number of Bullets: " + bullets.size()); 
 

 
  timer++;
  fill(0);
  shottimer++;
  background(255);
  playerdead();
  displayUI();
 // println(hitcount);
  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  for (int i = 0; i < bullets.size (); i++) {            
    Bullet b = bullets.get(i);  
    b.runbullet();
    if (b.isDead()) {                                        //check if its dead
//      println("dead");
      bullets.remove(i);                                  //remove dead particle
    }
  }
  if (mousePressed) {
    if (shottimer>shotdelay) {
      bullets.add(new Bullet(new PVector(width/2, height/2)));        
      shottimer=0;
    }
  }
  ///////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////


  ////////////////////////////////////////////////////////
  //////////////Stanko Code///////////////////////////////
  ////////////////////////////////////////////////////////
  for (int i =0; i<stankos.size (); i++) {

    Stanko s= stankos.get(i);
//    println(s.locstanko.x, s.locstanko.y);
    s.runstanko();
  }
  //////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////




  runmove();
  shooting();
  println(playerdead);
if (playerdead){
 
}
}

