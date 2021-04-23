public class rectWindow{
 int y, fontSize, c;
 String text;
  public rectWindow(int y, int fontSize, String text) {
    this.y = y;
    this.fontSize = fontSize;
    this.text = text;
    this.c = 255;
  }
  
  public rectWindow(int y, int fontSize, String text, int c) {
    this.y = y;
    this.fontSize = fontSize;
    this.text = text;
    this.c = c;
  }
  
  public void draw() {
    fill(c);
    rect(50, y, 300, 50, 25);
    fill(0);
    textAlign(CENTER);
    textSize(fontSize);
    text(text, 200, y + 35);
  }
}
