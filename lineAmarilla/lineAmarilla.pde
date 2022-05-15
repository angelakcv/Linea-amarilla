ArrayList<Caminante> caminantes;
//Caminante c;
Paleta p;

void setup() {
  size (900, 594);

  p = new Paleta("paletaLinea1.png");
  //c = new Caminante(p.darUnColor());
  caminantes = new ArrayList<Caminante>();
  for (int i=0; i<3; i++) {
    caminantes.add(new Caminante(p.darUnColor()));
  }
}

void draw() {
  //background(20);
  for (Caminante c : caminantes) {
    c.dibujar();
    c.mover();
    c.rebote();
    c.cambiarColor(p.darUnColor());
    c.dibujarRelacion(caminantes);
  }
}

/*void keyPressed() {
 c.cambiarDireccion();
 c.cambiarColor(p.darUnColor());
 c.cambiarTamano();
 }*/
