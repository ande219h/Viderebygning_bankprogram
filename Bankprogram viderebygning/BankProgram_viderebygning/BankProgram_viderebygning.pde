// Need G4P library
import g4p_controls.*;
import processing.sound.*;



//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk
//Opgave 3. Lav kontoen om til et objekt
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente
ArrayList <Komponent> liste = new ArrayList <Komponent>();




KontoFelt  kontoFelt1     = new KontoFelt(30, 150);
KontoFelt  kontoFelt2     = new KontoFelt(330, 150);



Komponent komponent=new Komponent();


void setup() {
  createGUI();
  customGUI();
  size(1000, 500, JAVA2D);


  frameRate(60);

  liste.add(kontoFelt1);
  liste.add(kontoFelt2);

}

void draw() {
  clear();
  for (Komponent k : liste) {
    k.tegn();
  }

}

void mousePressed() {
  for (Komponent k : liste) {
    k.registrerKlik();
  }

}

void keyPressed() {
    if(key==ENTER && checkbox1.isSelected()){
      kontoFelt1.formue += Float.parseFloat(textfield1.getText());
    kontoFelt2.formue += Float.parseFloat(textfield1.getText());
    textfield1.setText("");
  }

}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
}
