import java.awt.Rectangle;

public class Window {
  public int x, y, w, h, c;
  public String text;
  public Rectangle clickArea;

  public Window(int x, int y, int c, String text) {
    this.w = 100;
    this.h = 75;
    this.x = x;
    this.y = y;
    this.c = c;
    this.text = text;
    this.clickArea = new Rectangle(x, y, w, h);
  }

  public void draw() {
    fill(c);
    strokeWeight(3);
    rect(x, y, w, h);    
    fill(0);
    textAlign(CENTER);
    textSize(13);
    text(text, x, (y+h/2) - 10, w, h);
  }

  public boolean hoveringOver() {
    return this.clickArea.contains(mouseX, mouseY);
  }
}
