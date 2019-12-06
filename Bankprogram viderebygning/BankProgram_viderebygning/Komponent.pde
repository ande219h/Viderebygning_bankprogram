class Komponent {
  boolean klikket;
  boolean enterKlikket;
  float x,y,b,h;
Komponent(){
}
  void tegn() {
  }

  void registrerKlik() {
        if (!klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = true;
    } else if (klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = false;
    }

  }

  boolean erKlikket() {
    return klikket;
  }
  boolean enter(){
  return enterKlikket;
  }
}
