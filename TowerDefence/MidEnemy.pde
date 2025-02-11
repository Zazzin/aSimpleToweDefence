class MidEnemy extends Enemy {
  MidEnemy(float x, float y) {
    super(x, y, 30, 4, 5);
  }
  
  void display() {
    fill(255, 0, 0); // give red color
    rect(x, y, 40, 20);
  }
}