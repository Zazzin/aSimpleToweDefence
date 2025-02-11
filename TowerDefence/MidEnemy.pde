class MidEnemy extends Enemy {
  MidEnemy(float x, float y) {
    super(x, y, 50, 2.5, 3);
  }
  
  // square
  void display() {
    fill(0, 255, 0); // verde
    rect(x, y, 30, 30);
  }
}