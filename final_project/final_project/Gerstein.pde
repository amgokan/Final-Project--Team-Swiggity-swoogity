

class Gerstein {
  PVector locgerstein;
  PVector velgerstein;
  PVector accgerstein;
  int lifegerstein =1;

  Gerstein () {
    locgerstein = new PVector(random(50, 1350), random(50, 750));
    velgerstein = new PVector (0, 0);
    accgerstein = new PVector (0, 0);
  }

  void rungerstein() {
    if (playerdead){
      //do nothing
    }
    else{
    displaygerstein();
    accelerategerstein();
    movegerstein();
    gotootherside();
    checkdeadgersteins();
    checkhitgersteins();
    }
  }

  void displaygerstein() {
    fill(0, 120, 120);
    ellipse(locgerstein.x, locgerstein.y, enemydiam, enemydiam);
  }

  void accelerategerstein() {
    accgerstein = new PVector (random(-1, 1), random(-1, 1));
  }

  void movegerstein() {
    velgerstein.add(accgerstein);
    velgerstein.normalize();
    velgerstein.mult(2);
    locgerstein.add(velgerstein);
  }

  void gotootherside() {
    if (locgerstein.x>1350) {
      locgerstein.x=51;
    }
    if (locgerstein.x<50) {
      locgerstein.x=1349;
    }
    if (locgerstein.y>750) {
      locgerstein.y=51;
    }
    if (locgerstein.y<50) {
      locgerstein.y=749;
    }
  }

  void checkhitgersteins() {
    for (int i=0; i<gersteins.size (); i++) {
      for (int j=0; j<bullets.size (); j++) {
        Gerstein s =gersteins.get(i);
        Bullet b =bullets.get(j);

        if (s.locgerstein.dist(b.location)<20) {
          bullets.remove(j);
          println("hiiiiiiiiiiiiiit");
          s.lifegerstein-=1;
          hitcount++;
        }
      }
    }
  }
  void checkdeadgersteins() {
    for (int i=0; i<gersteins.size (); i++) {
      Gerstein s =gersteins.get(i);
      if (s.lifegerstein<=0) {
        
        println("kill"+hitcount);
        gersteins.remove(i);
        gersteins.add(new Gerstein());
      }
    }
  }
}

