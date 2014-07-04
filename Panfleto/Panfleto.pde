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

void setup() {

  size(900, 600);
  rectMode(CENTER);
  imageMode(CENTER);

  tarrafaImageLogo = loadImage("logo-180total.png");
  tarrafa = createFont("Ubuntu", 12, true);
  textFont(tarrafa, 12);

  desenhista = new Desenhista();
  
}

void draw() {
  background(255);
  vertical();
  horizontal();
  logo();
  info();
}

void vertical() {

  px = py = gridV;
  float temp = width - 2*gridV;

  for (int i = 0; i < 569; i++) {

    if (random(1) < .3)
      desenhista.colore(205, 205, 205, 50);
    else
      desenhista.colore(252, 217, 0, 100);
    if (random(1) < .3)
      desenhista.colore(255, 255, 255, 0);
    else
      desenhista.colore(22, 175, 210, 100);

    desenhista.desenhaVertical(px - offSetXV, py - offSetYV);

    if (px < temp) {
      px += gridV;
    } else if (py < height) {
      px = gridV;
      py += gridV;
    }
  }
}

void horizontal() {

  px = py = gridH;
  float temp = width - gridV;

  for (int i = 0; i < 648; i++) {
    if (random(1) < .2)
      desenhista.colore(205, 205, 205, 50);
    else
      desenhista.colore(22, 175, 210, 100);
    if (random(1) < .2)
      desenhista.colore(255, 255, 255, 0);
    else
      desenhista.colore(252, 217, 0, 100);

    desenhista.desenhaHorizontal(px - offSetXH, py - offSetYH);

    if (px < temp) {
      px += gridH;
    } else if (py < height) {
      px = gridH;
      py += gridH;
    }
  }
}

void logo() {
  image(tarrafaImageLogo, 700, 400);
}

void info() {
  fill(#2B2B2B);
  triangle(0, -50, 450, 0, 0, height);
  fill(#ADE8C7);
  text("Tarrafa Hacker Clube", 20, 140);
  text("tarrafa.net", 20, 180);
  noFill();
  noStroke();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("pics/panfleto-######.png");
  }
}

//  void coloreOnMouseOver(int x, int y) {
//    if (dist(this.x, this.y, x, y) < 10)
//      colore(0, 0, parseInt(random(255)), 100, 0, 0, 'n');

