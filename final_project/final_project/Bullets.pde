class Bullet {

  PVector location;
  PVector velocity;
  int lifespan;
  int diam;

  Bullet (PVector l) {
    velocity = PVector.fromAngle(heading.heading()+PI+random(-.05,.05));
    velocity.mult(30);
    location = new PVector (ploc.x, ploc.y);
    lifespan=50;
  }

  void runbullet() {
    updatebullet();
    displaybullet();

  }

  void updatebullet() {
    location.add(velocity);
    lifespan-=1;
  }

  void displaybullet() {
    fill(random(255), random(255), random(255));
    ellipse(location.x, location.y, 10, 10);
  }
  
  
boolean isDead(){
 if (lifespan<0){
  return true;
 } 
 else{
  return false; 
 }
}

}

