/* @pjs preload="logo-180total.png"; */

Desenhador desenhista;
PImage tarrafaImageLogo;
PFont tarrafa;
float px;
float py;
float offSetXH = 1;
float offSetYV = 1;
float offSetYH = -18.897637795;
float offSetXV = -18.897637795;
float gridH = 37.795275591;
float gridV = 37.795275591;

public void setup() {

  size(800, 540);

  rectMode(CENTER);
  imageMode(CENTER);

  tarrafaImageLogo = loadImage("logo-180total.png");
  tarrafa = createFont("Ubuntu", 12, true);
  textFont(tarrafa, 12);

  desenhista = new Desenhista();
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
  float temp = width - 2*gridV;

  for (int i = 0; i < 260; i++) {
    desenhista.desenhaVertical(px - offSetXV, py - offSetYV, px, px, py%35, 50);
    if (px < temp) {
      px += gridV;
    } else if (py < height) {
      px = gridV;
      py += gridV;
    }
  }
}

public void horizontal() {

  px = py = gridH;
  float temp = width - gridV;

  for (int i = 0; i < 252; i++) {
    desenhista.desenhaHorizontal(px - offSetXH, py - offSetYH, py%32, px%87, py, 50);

    if (px < temp) {
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
  fill(#2B2B2B);
  triangle(0, -50, 450, 0, 0, height);
  fill(#ADE8C7);
  text("Tarrafa Hacker Clube", 20, 140);
  text("tarrafa.net", 20, 180);
  noFill();
  noStroke();
}

public void keyPressed() {
  if (key == 's') {
    saveFrame("pics/panfleto-######.png");
  }
}

