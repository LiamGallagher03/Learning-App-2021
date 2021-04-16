import java.awt.Rectangle;

public class Window {
  public int x, y, w, h, c;
  public String text;
  public Rectangle clickArea;

  public Window(int w, int h, int x, int y, int c, String text) {
    this.w = w;
    this.h = h;
    this.x = x;
    this.y = y;
    this.c = c;
    this.text = text;
    this.clickArea = new Rectangle(x,y,w,h);
  }

  public void draw() {
    fill(c);
    strokeWeight(3);
    rect(x, y, w, h);    
    if (text != null) {
      fill(0);
      textAlign(CENTER);
      text(text, x + 3, (y+h/2) - 10, w, h);
    }
  }
  
  public boolean hoveringOver() {
   return this.clickArea.contains(mouseX,mouseY); 
  }
  
  
}
