boolean playerdead;

void playerdead() {
 stankokills();
 gersteinkills();
 sansykills();
}

void stankokills(){
   for (int i=0; i<stankos.size (); i++) {
    Stanko s =stankos.get(i);
    if (ploc.dist(s.locstanko)<(enemydiam+playerdiam-20)) {
      stankos.remove(i);
      playerdead=true;
      showendUI();
      playerdead=true;
    }
  }
}

void gersteinkills(){
  for (int i=0; i<gersteins.size (); i++) {
    Gerstein g = gersteins.get(i);
    if (ploc.dist(g.locgerstein)<(enemydiam+playerdiam-20)) {
      gersteins.remove(i);
      playerdead=true;
      showendUI();
      playerdead=true;
    }
  }}
  
  void sansykills(){
    for (int i=0; i<sansys.size(); i++){
     Sansy s =sansys.get(i);
    if (ploc.dist(s.locsansy)<(enemydiam+playerdiam-20)){
     sansys.remove(i);
     playerdead=true;
     showendUI();
     playerdead=true;
    } 
    }
    
  }

