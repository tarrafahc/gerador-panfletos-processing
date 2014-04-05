/* @pjs preload="logo-180total.png"; */

Form vertical[], horizontal[];
PImage tarrafaImageLogo;
PFont tarrafa;

void setup() {
  size(900, 680);
  rectMode(CENTER);
  imageMode(CENTER);
  setGrid();
  tarrafaImageLogo = loadImage("logo-180total.png");
  tarrafa = createFont("Ubuntu", 32, true);
  textFont(tarrafa, 32);
  background(255);
}

void setGrid() {
  float px, py, offSetX, offSetY, gridH, gridV;

  gridV = 37.795275591;

  vertical = new Form[569];

  offSetX = -18.897637795;
  offSetY = 1;
  px = py = gridV;

  for (int i = 0; i < vertical.length; i++) {
    vertical[i] = new Form(px - offSetX, py - offSetY);

    if (px < width - 2*gridV) {
      px += gridV;
    }
    else if (py < height) {
      px = gridV;
      py += gridV;
    }
    print(px + " ");
    print(py + " ");
  }

  gridH = 37.795275591;

  horizontal = new Form[648];

  offSetX = 1;
  offSetY = -18.897637795;
  px = py = gridH;

  for (int i = 0; i < horizontal.length; i++) {
    horizontal[i] = new Form(px - offSetX, py - offSetY);

    if (px < width - gridV) {
      px += gridH;
    } 
    else if (py < height) {
      px = gridH;
      py += gridH;
    }
    print(px + " ");
    print(py + " ");
  }
}

void draw() {
  background(255);

  for (int i = 0; i < vertical.length; i++)
    vertical[i].display('v');

  for (int i = 0; i < horizontal.length; i++)
    horizontal[i].display('h');

  animaV();
  animaH();
  animaTarrafaImage();
  animaInfo();
}

void animaV() {
  int foo = parseInt(random(0, vertical.length - 1));

  if (random(1) < .5)
    vertical[foo].colore(205, 205, 205, 50, 0, 0, 'n');
  else if (random(1) < .6)
    vertical[foo].colore(252, 217, 0, 100, 0, 0, 'n');
  else if (random(1) < .7)
    vertical[foo].colore(255, 255, 255, 0, 0, 0, 'n');
  else if (random(1) < .8)
    vertical[foo].colore(22, 175, 210, 100, 0, 0, 'n');
  else if (random(1) < .9)
    vertical[foo].colore(parseInt(random(200, 250)), 0, 0, 100, 0, 0, 'n');
}

void animaH() {
  int bar = parseInt(random(0, horizontal.length - 1));

  if (random(1) < .5)
    horizontal[bar].colore(205, 205, 205, 50, 0, 0, 'n');
  else if (random(1) < .6)
    horizontal[bar].colore(22, 175, 210, 100, 0, 0, 'n');
  else if (random(1) < .7)
    horizontal[bar].colore(255, 255, 255, 0, 0, 0, 'n');
  else if (random(1) < .8)
    horizontal[bar].colore(252, 217, 0, 100, 0, 0, 'n');
  else if (random(1) < .9)
    horizontal[bar].colore(0, 0, parseInt(random(140, 255)), 100, 0, 0, 'n');
}

void animaTarrafaImage() {
  image(tarrafaImageLogo, width/2, height - 100);
}

void animaInfo() {
  fill(color(24,179,210));
  rect(height/4, 0, height, width - 250, width);
  fill(255);
  text("Evento: Oficina de Stencil", 20, 100);
  text("Ministrante: João Lazaro", 20, 150);
  text("Local: Tarrafa Headquarters", 20, 200);
  text("Site: tarrafa.net", 20, 250);
}
