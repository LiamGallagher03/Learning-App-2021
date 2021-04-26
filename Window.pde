import java.awt.Rectangle;

public class Window {
  public int x, y, w, h, c, fontSize;
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
    this.fontSize = 13;
  }

  public Window(String text) {
    this.w = 300;
    this.h = 100;
    this.x = 50;
    this.y = 50;
    this.c = 255;
    this.text = text;
    this.fontSize = 40;
  }

  public void draw() {
    fill(c);
    strokeWeight(3);
    rect(x, y, w, h);    
    fill(0);
    textAlign(CENTER);
    textSize(fontSize);
    text(text, x, (y+h/2) - 10, w, h);
  }

  public boolean hoveringOver() {
    return this.clickArea.contains(mouseX, mouseY);
  }
}
