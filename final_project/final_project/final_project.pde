PImage img;

int bwidth = 1400;
int bheight = 800;

int playerscore=0;

int fieldwidth = 1300;
int fieldheight =700;

int playerdiam = 20;
int enemydiam = 20;

int shottimer=0;
int shotdelay=0;     //sets the amount of frames berween shots

int hitcount=0;
int killcount=0;


ArrayList<Bullet> bullets;

ArrayList<Stanko> stankos;
ArrayList<Gerstein> gersteins;
ArrayList<Sansy> sansys;
//ArrayList<DrJ> DrJs;
//ArrayList<Esposito> espositos;

int timer=0;

void setup() {
  
  img=loadimage("images.jpeg");
  
  size(bwidth, bheight);
  bullets = new ArrayList<Bullet>();
  stankos = new ArrayList <Stanko>();
  gersteins = new ArrayList <Gerstein>();
  sansys=new ArrayList <Sansy>();
  for (int i =0; i<8; i++) {
    stankos.add(new Stanko());
  }
 for (int i =0; i<5; i++) {
  gersteins.add(new Gerstein()); 
 }
 for (int i=0; i<1; i++){
  sansys.add(new Sansy()); 
 }
}

void draw() {

//println(ploc.dist(goal1));
println(playerscore);




  timer++;
  fill(0);
  shottimer++;
  background(255);
  playerdead();
  displayUI();
 
  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  for (int i = 0; i < bullets.size (); i++) {            
    Bullet b = bullets.get(i);  
    b.runbullet();
    if (b.isDead()) {                                        //check if its dead

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
  for (int i =0; i<stankos.size(); i++) {

    Stanko s= stankos.get(i);

    s.runstanko();
  }
  //////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////
  
    ////////////////////////////////////////////////////////
  //////////////Gerstein Code///////////////////////////////
//  ////////////////////////////////////////////////////////
  for (int i =0; i<gersteins.size(); i++) {

    Gerstein g= gersteins.get(i);
  
    g.rungerstein();
  }
  //////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////
  
  
  ////////////////////////////////////////////////////////
  //////////////Sanservino Code///////////////////////////////
  ////////////////////////////////////////////////////////
  for (int i =0; i<sansys.size(); i++) {

    Sansy s= sansys.get(i);

    s.runsansy();
  }
  //////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////
  
addnumbers();



  runmove();
  shooting();
  
  if (playerdead) {
  }
}

