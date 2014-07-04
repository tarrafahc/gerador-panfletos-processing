public class Desenhista implements Desenhador {

  float mmWidth, pixelWidth, mmHeight, pixelHeight;

  public Desenhista() {
    mmWidth = 5f;
    pixelWidth = (mmWidth * 96f) / 25.4;
    mmHeight = 10f;
    pixelHeight = (mmHeight * 96f) / 25.4;
  }

  public void desenhaHorizontal(float x, float y, float r, float g, float b, float a) {
    fill(r, g, b, a);
    arc(x - 1.0 * pixelWidth, y, pixelWidth, pixelWidth, PI/2, 3 * PI/2);
    rect(x, y, pixelHeight, pixelWidth);
    arc(x + 1.0 * pixelWidth, y, pixelWidth, pixelWidth, 3 * PI/2, 5 * PI/2);
  }

  public void desenhaVertical(float x, float y, float r, float g, float b, float a) {
    fill(r, g, b, a);
    arc(x, y - 1.0 * pixelWidth, pixelWidth, pixelWidth, PI, TWO_PI);
    rect(x, y, pixelWidth, pixelHeight);
    arc(x, y + 1.0 * pixelWidth, pixelWidth, pixelWidth, 0, PI);
  }
}
