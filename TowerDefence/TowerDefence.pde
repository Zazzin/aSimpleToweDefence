ArrayList<Enemy> nemici;
Field grid;

void settings() {
  size(10 * 40, 10 * 40);
}

void setup() {
  grid = new Field(10, 10, 40);
  grid.disableCells(0, 4, 10, 1);
  
  nemici = new ArrayList<Enemy>();
  
  
  nemici.add(new LightEnemy(10, 10));
  nemici.add(new MidEnemy(60, 150));
  nemici.add(new HeavyEnemy(80, 120));
}

void draw() {
  background(255);
  grid.drawGrid();

  for (int i = nemici.size() - 1; i >= 0; i--) {
    Enemy n = nemici.get(i);
    n.display();
    
    // if enemy is out of bounds you need to remove it
    if (n.x < -50) {
      nemici.remove(i);
    }
  }
}

void mousePressed() {
 //change the gird state
  grid.toggleCell(mouseX, mouseY);
}
