ArrayList<Enemy> nemici;
ArrayList<Tower> torrete;
ArrayList<int[]> enemyPath;
Field grid;

void settings() {
  size(10 * 40, 10 * 40);
}

void setup() {
  grid = new Field(10, 10, 40);
  grid.initGrid();
  
  nemici = new ArrayList<Enemy>();
  torrete = new ArrayList<Tower>();
  enemyPath = new ArrayList<>();

  enemyPath.add(new int[]{120, 89});
  enemyPath.add(new int[]{280, 98});
  

  /*enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});
  enemyPath.add(new int[]{200, 10});*/

  nemici.add(new LightEnemy(15, 335, enemyPath));
  nemici.add(new MidEnemy(15, 325, enemyPath));
  nemici.add(new HeavyEnemy(70, 340, enemyPath));

  nemici.add(spawnRandomEnemy());
  nemici.add(spawnRandomEnemy());
  nemici.add(spawnRandomEnemy());
}

void draw() {
  background(255);
  grid.initGrid();
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

Enemy spawnRandomEnemy() {
  int col, row;
  // Scegli casualmente il margine: superiore o sinistro
  if (random(1) < 0.5) {
    // Spawn sul margine superiore: riga fissa a 0, colonna casuale (0-9)
    col = (int) random(0, 10);
    row = 0;
  } else {
    // Spawn sul margine sinistro: colonna fissa a 0, riga casuale (0-9)
    col = 0;
    row = (int) random(0, 10);
  }
  
  // Calcola la posizione centrata nella cella scelta
  float x = col * grid.getCellSize() + grid.getCellSize() / 2;
  float y = row * grid.getCellSize() + grid.getCellSize() / 2;
  
  // Usa un valore random per determinare la tipologia del nemico
  float tipo = random(30);
  if (tipo < 10) {
    return new LightEnemy((int)x, (int)y, enemyPath);
  } else if (tipo < 20) {
    return new MidEnemy((int)x, (int)y, enemyPath);
  } else {
    return new HeavyEnemy((int)x, (int)y, enemyPath);
  }
}
