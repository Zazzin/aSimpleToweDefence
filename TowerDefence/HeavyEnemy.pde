class HeavyEnemy extends Nemico {
  HeavyEnemy(float x, float y) {
    super(x, y, 50, 1, 7);
  }
  
  // Circle
  void display() {
    fill(0, 0, 255); // blu
    ellipse(x, y, 30, 30);
  }
}