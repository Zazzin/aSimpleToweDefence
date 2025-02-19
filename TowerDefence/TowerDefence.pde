ArrayList<Enemy> nemici;
ArrayList<Tower> torrete;
ArrayList<int[]> enemyPath;
Field grid;

void settings() {
  size(10 * 40, 10 * 40);
}

void setup() {
  grid = new Field(10, 10, 40);
  grid.disableCells(0, 4, 10, 1);
  
  nemici = new ArrayList<Enemy>();
  torrete = new ArrayList<Tower>();
  enemyPath = new ArrayList<>();

  enemyPath.add(new int[]{400, 200});
  /*enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});*/

  nemici.add(new LightEnemy(10, 200, enemyPath));
  nemici.add(new MidEnemy(10, 200, enemyPath));
  nemici.add(new HeavyEnemy(10, 200, enemyPath));
}

void draw() {
  background(255);
  grid.drawGrid();

  for (int i = nemici.size() - 1; i >= 0; i--) {
    Enemy n = nemici.get(i);
    n.display();

    if(!n.isAlive()){
      nemici.remove(i);
    }
    n.move();
    
    // if enemy is out of bounds you need to remove it
    if (n.x < -50) {
      nemici.remove(i);
    }
  }

  for(Tower t : torrete){
    t.display();
    t.attack(nemici);
  }
}

void mousePressed() {
 //change the gird state
  grid.toggleCell(mouseX, mouseY);
  int col = mouseX / grid.getCellSize(); //determinate the begin of the cells 
  int row = mouseY / grid.getCellSize();

  //place the tower at the center of the cell
  float x = col * grid.getCellSize() + (grid.getCellSize()/2);
  float y = row * grid.getCellSize() + (grid.getCellSize()/2);

  TowerBuilder builder = new TowerBuilder();

  if(grid.clickableGrid[col][row]){
    torrete.add(builder.createTower(x, y, this));
    //grid.clickableGrid = false;
  }
}
