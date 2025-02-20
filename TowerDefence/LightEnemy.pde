class LightEnemy extends Enemy {
  LightEnemy(float x, float y, ArrayList<int[]> path) {
    super(x, y, 30, 4, 5, path);
  }
  
  //rectangle
  void display() {
    fill(255, 0, 0); // give red color
    rect(x, y, 40, 20);
  }

  float getRadius() {
    return 25 / 2.0;
  }
}