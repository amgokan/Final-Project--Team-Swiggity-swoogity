

class Stanko {
  PVector locstanko;
  PVector velstanko;
  PVector accstanko;
  int lifestanko =1;

  Stanko () {
    locstanko = new PVector(random(50, 1350), random(50, 750));
    velstanko = new PVector (0, 0);
    accstanko = new PVector (0, 0);
  }

  void runstanko() {
    if (playerdead){
      //do nothing
    }
    else{
    displaystanko();
    acceleratestanko();
    movestanko();
    gotootherside();
    checkdeadstankos();
    checkhitstankos();
    }
  }

  void displaystanko() {
    fill(0, 0, 255);
    ellipse(locstanko.x, locstanko.y, enemydiam, enemydiam);
  }

  void acceleratestanko() {
    accstanko = new PVector (random(-1, 1), random(-1, 1));
  }

  void movestanko() {
    velstanko.add(accstanko);
    velstanko.normalize();
    velstanko.mult(2);
    locstanko.add(velstanko);
  }

  void gotootherside() {
    if (locstanko.x>1350) {
      locstanko.x=51;
    }
    if (locstanko.x<50) {
      locstanko.x=1349;
    }
    if (locstanko.y>750) {
      locstanko.y=51;
    }
    if (locstanko.y<50) {
      locstanko.y=749;
    }
  }

  void checkhitstankos() {
    for (int i=0; i<stankos.size (); i++) {
      for (int j=0; j<bullets.size (); j++) {
        Stanko s =stankos.get(i);
        Bullet b =bullets.get(j);

        if (s.locstanko.dist(b.location)<20) {
          bullets.remove(j);
          println("hiiiiiiiiiiiiiit");
          s.lifestanko-=1;
          hitcount++;
        }
      }
    }
  }
  void checkdeadstankos() {
    for (int i=0; i<stankos.size (); i++) {
      Stanko s =stankos.get(i);
      if (s.lifestanko<=0) {
        
        println("kill"+hitcount);
        stankos.remove(i);
        stankos.add(new Stanko());
      }
    }
  }
}

