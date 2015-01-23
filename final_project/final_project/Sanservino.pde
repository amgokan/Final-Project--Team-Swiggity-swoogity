

class Sansy {
  PVector locsansy=new PVector (0, 0);
  PVector t=new PVector(random(1000), random(1000));

  int lifesansy =7;
  int timealive=0;

  Sansy () {
    locsansy = new PVector(random(50, 1350), random(50, 750));
  }

  void runsansy() {
    timealive++;
    if (playerdead) {
      //do nothing
    } else {
      displaysansy();

      movesansy();
      gotootherside();
      checkdeadsansys();
      checkhitsansys();
    }
  }

  void displaysansy() {
    fill(150, 100, 20);
    ellipse(locsansy.x, locsansy.y, enemydiam, enemydiam);
  }



  void movesansy() {
    locsansy.x=noise(t.x);
    locsansy.x=map(locsansy.x, 0, 1, 0, width);
    locsansy.y=noise(t.y);
    locsansy.y=map(locsansy.y, 0, 1, 0, height);

    ellipse(locsansy.x, locsansy.y, enemydiam, enemydiam);

    t.x+=.01;
    t.y+=.01;
  }

  void gotootherside() {
    if (locsansy.x>1350) {
      locsansy.x=51;
    }
    if (locsansy.x<50) {
      locsansy.x=1349;
    }
    if (locsansy.y>750) {
      locsansy.y=51;
    }
    if (locsansy.y<50) {
      locsansy.y=749;
    }
  }

  void checkhitsansys() {
    for (int i=0; i<sansys.size(); i++) {
      for (int j=0; j<bullets.size (); j++) {
        Sansy s =sansys.get(i);
        Bullet b =bullets.get(j);

        if (s.locsansy.dist(b.location)<50 && timealive>10) {
          bullets.remove(j);
          println("hiiiiiiiiiiiiiit");
          s.lifesansy-=1;
          hitcount++;
        }
      }
    }
  }
  void checkdeadsansys() {
    for (int i=0; i<sansys.size(); i++) {
      Sansy s =sansys.get(i);
      if (s.lifesansy<=0) {

        println("kill"+hitcount);
        sansys.remove(i);
        sansys.add(new Sansy());
      }
    }
  }
}

