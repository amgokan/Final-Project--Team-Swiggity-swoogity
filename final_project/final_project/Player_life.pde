boolean playerdead;

void playerdead(){
for (int i=0; i<stankos.size(); i++){
  Stanko s =stankos.get(i);
  if (ploc.dist(s.locstanko)<(enemydiam+playerdiam-20)){
   stankos.remove(i);
playerdead=true;
showendUI();
  }
 
  
}  

}


