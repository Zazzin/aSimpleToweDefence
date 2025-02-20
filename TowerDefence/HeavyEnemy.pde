class HeavyEnemy extends Enemy{
  HeavyEnemy(float x, float y, ArrayList<int[]> path) {
    super(x, y, 50, 1, 7, path);  
  }
  
  // Circle
  void display() {
    fill(0, 0, 255); // blu
    ellipse(x, y, 30, 30);
  }

  float getRadius() {
    return 35 / 2.0;
  }
}
