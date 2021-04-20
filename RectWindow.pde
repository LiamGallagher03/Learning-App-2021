public class rectWindow{
 int y, fontSize;
 String text;
  public rectWindow(int y, int fontSize, String text) {
    this.y = y;
    this.fontSize = fontSize;
    this.text = text;
  }
  
  public void draw() {
    fill(255);
    rect(50, y, 300, 50, 25);
    fill(0);
    textAlign(CENTER);
    textSize(fontSize);
    text(text, 200, y + 35);
  }
}
