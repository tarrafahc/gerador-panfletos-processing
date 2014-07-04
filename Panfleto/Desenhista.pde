public class Desenhista implements Desenhador {

  private float mmWidth, pixelWidth, mmHeight, pixelHeight;
  
  private final float CONSTANT = 3 * PI/2;
  private final float CONSTANT_2 = PI/2;
  private final float CONSTANT_3 = 5 * PI/2;

  public Desenhista() {
    mmWidth = 5f;
    pixelWidth = (mmWidth * 96f) / 25.4;
    mmHeight = 10f;
    pixelHeight = (mmHeight * 96f) / 25.4;
  }

  public void desenhaHorizontal(float x, float y, float r, float g, float b, float a) {
    fill(r, g, b, a);
    arc(x - 1 * pixelWidth, y, pixelWidth, pixelWidth, CONSTANT_2, CONSTANT);
    rect(x, y, pixelHeight, pixelWidth);
    arc(x + 1 * pixelWidth, y, pixelWidth, pixelWidth, CONSTANT, CONSTANT_3);
  }

  public void desenhaVertical(float x, float y, float r, float g, float b, float a) {
    fill(r, g, b, a);
    arc(x, y - 1 * pixelWidth, pixelWidth, pixelWidth, PI, TWO_PI);
    rect(x, y, pixelWidth, pixelHeight);
    arc(x, y + 1 * pixelWidth, pixelWidth, pixelWidth, 0, PI);
  }

}
