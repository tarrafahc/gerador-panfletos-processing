/* @pjs preload="logo-180total.png"; */

PFont tarrafa;
Desenhador desenhista;
PImage tarrafaImageLogo;
float px, py, offSetXH = 1, offSetYV = 1, offSetYH = -18.897637795, offSetXV = -18.897637795, gridH = 37.795275591, gridV = 37.795275591, t1, t2;

public void setup() {
  size(710, 710);

  rectMode(CENTER);
  imageMode(CENTER);

  tarrafaImageLogo = loadImage("logo-180total.png");
  tarrafa = createFont("Inconsolata", 32, true);
  textFont(tarrafa, 32);

  desenhista = new Desenhista();

  noStroke();
}

public void draw() {
  background(255);
  vertical();
  horizontal();
  logo();
  info();
}

public void vertical() {
  px = py = gridV;
  t1 = width - 2*gridV;

  for (int i = 0; i < 306; i++) {

    /*
     * Cor amarelo do logo
     */

    desenhista.desenhaVertical(px - offSetXV, py - offSetYV, 251, 217, 5, 50);

    /*
     * Gradiente
     */

    //desenhista.desenhaVertical(px - offSetXV, py - offSetYV, py%300, py%130, py%140, 50);

    if (px < t1) {
      px += gridV;
    } else if (py < height) {
      px = gridV;
      py += gridV;
    }
  }
}

public void horizontal() {
  px = py = gridH;
  t2 = width - gridV;

  for (int i = 0; i < 306; i++) {

    /*
     * Cor azul do logo
     */

    //desenhista.desenhaHorizontal(px - offSetXH, py - offSetYH, 17, 178, 209, 50);

    /*
     * Gradiente
     */

    desenhista.desenhaHorizontal(px - offSetXH, py - offSetYH, py%300, py%130, py%140, 50);

    if (px < t2) {
      px += gridH;
    } else if (py < height) {
      px = gridH;
      py += gridH;
    }
  }
}

public void logo() {
  image(tarrafaImageLogo, 415, 430);
}

public void info() {  
  fill(#2b2b2b);
  triangle(0, -50, 450, 0, 0, height);
  fill(#ffffff);
  text("Tarrafa Hackerspace", 30, 60);
}

public void keyPressed() {
  if (key == 's') {
    saveFrame("pics/panfleto-######.png");
  }
}
