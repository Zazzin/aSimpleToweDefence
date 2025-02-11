Field grid;

void settings() {
  size(10 * 40, 10 * 40);
}

void setup() {
  grid = new Field(10, 10, 40);
  
  // Disabilita una porzione della griglia:
  // in questo caso, a partire dalla colonna 0 e dalla riga 4, disabilita 10 colonne per 1 riga.
  grid.disableCells(0, 4, 10, 1);
}

void draw() {
  background(255);
  grid.drawGrid();
}

void mousePressed() {
 //change the gird state
  grid.toggleCell(mouseX, mouseY);
}
