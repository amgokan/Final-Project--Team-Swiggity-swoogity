

class Stanko{
 PVector locstanko;
PVector velstanko;
PVector accstanko;
int lifestanko;

Stanko (){
 locstanko = new PVector(random(50,1350),random(50,750));
 velstanko = new PVector (0,0);
 accstanko = new PVector (0,0);
}

void runstanko(){
 displaystanko();
 acceleratestanko();
 movestanko();
 gotootherside();
 
}

  void displaystanko(){
    ellipse(locstanko.x, locstanko.y, 20,20); 
  }

void acceleratestanko(){
   accstanko = new PVector (random(-1,1),random(-1,1));
}

void movestanko(){
  velstanko.add(accstanko);
  velstanko.normalize();
  velstanko.mult(2);
    locstanko.add(velstanko);
    
}

void gotootherside(){
 if (locstanko.x>1350){
  locstanko.x=51; 
 }
 if (locstanko.x<50){
   locstanko.x=1349;
 }
 if (locstanko.y>750){
   locstanko.y=51;
 }
 if(locstanko.y<50){
   locstanko.y=749;
 }
 
  
}

}
