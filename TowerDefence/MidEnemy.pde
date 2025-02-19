class MidEnemy extends Enemy {
  MidEnemy(float x, float y, ArrayList<int[]> path) {
    super(x, y, 50, 2.5f, 3, path);
  }
  
  // square
  void display() {
    fill(0, 255, 0); // verde
    rect(x, y, 30, 30);
  }
}