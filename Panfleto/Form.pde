class Form {
  private float x, y, mmWidth, mmHeight, pixelWidth, pixelHeight, contourWeight;
  private int spaceBanner, red, green, blue, weightFill, weightStroke;
  private PGraphics pgV, pgH;
  private char opContour;

  Form (float x, float y) {
    this.x = x;
    this.y = y;
    mmWidth = 5f;
    pixelWidth = (mmWidth * 96f) / 25.4;
    mmHeight = 10f;
    pixelHeight = (mmHeight * 96f) / 25.4;
    pgV = createGraphics(5, 10);
    pgH = createGraphics(10, 5);
    this.opContour = 'n';
    initColors();
  }

  void display(char op) {
    colore(red, green, blue, weightFill, weightStroke, contourWeight, opContour);

    if (op == 'h') {
      pgV.beginDraw();
      arc(x - 1.0 
        * pixelWidth, y, pixelWidth, pixelWidth, PI/2, 3*PI/2);
      rect(x, y, pixelHeight, pixelWidth);
      arc(x + 1.0 
        * pixelWidth, y, pixelWidth, pixelWidth, 3*PI/2, 5*PI/2);
      pgV.endDraw();
    }
    else if (op == 'v') {
      pgH.beginDraw();
      arc(x, y - 1.0 
        * pixelWidth, pixelWidth, pixelWidth, PI, TWO_PI);
      rect(x, y, pixelWidth, pixelHeight);
      arc(x, y + 1.0 
        * pixelWidth, pixelWidth, pixelWidth, 0, PI);
      pgH.endDraw();
    }
  }

  void update(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void colore(int red, int green, int blue, int weightFill, int weightStroke, float contourWeight, char opContour) {
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.weightFill = weightFill;
    this.weightStroke = weightStroke;
    this.contourWeight = contourWeight;
    //this.opContour = opContour;

    strokeWeight(contourWeight);
    fill(color(red, green, blue, weightFill));

    if (opContour == 'y')
      stroke(color(0, 0, 0, weightStroke));
    else if (opContour == 'n')
      noStroke();
  }

  void initColors() {
    red = green = blue = 205;
    contourWeight = 0;
    weightStroke = 0;
    weightFill = 50;
  }

  void coloreOnMouseOver(int x, int y) {
    if (dist(this.x, this.y, x, y) < 10)
      colore(0, 0, parseInt(random(255)), 100, 0, 0, 'n');
  }
}

void keyPressed() {
  if (key == 's') {
    saveFrame("data/pics/tarrafa-######.png");
  }
}
