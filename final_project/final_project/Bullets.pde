class Bullet {

  PVector location;
  PVector velocity;
  int lifespan;
  int diam;

  Bullet (PVector l) {
    velocity = PVector.fromAngle(heading.heading()+PI);
    velocity.mult(30);
    location = new PVector (ploc.x, ploc.y);
    lifespan=50;
  }

  void runbullet() {
    updatebullet();
    displaybullet();
    //      println("GGG");
  }

  void updatebullet() {
    location.add(velocity);
    lifespan-=1;
  }

  void displaybullet() {
    ellipse(location.x, location.y, 10, 10);
  }
  
  `
boolean isDead(){
 if (lifespan<0){
  return true;
 } 
 else{
  return false; 
 }
}

}

