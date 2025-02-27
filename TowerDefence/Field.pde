class Field{
  int cols = 10;     
  int rows = 10;      
  int cellSize = 40;  //expired in pixels
    
    
  boolean[][] grid; // Matrix whit cell state
  boolean[][] clickableGrid; // Matrix to determinate if a cell is clickable 
  
  Field(int cols, int rows, int cellSize) {
    this.cols = cols;
    this.rows = rows;
    this.cellSize = cellSize;
    
    // Inizializza le matrici
    grid = new boolean[cols][rows];
    clickableGrid = new boolean[cols][rows];
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j] = false;
        clickableGrid[i][j] = true;
      }
    }
  }

  int getCellSize(){
    return this.cellSize;
  }
  
  void disableCells(int startCol, int startRow, int numCols, int numRows) {
    for (int i = startCol; i < startCol + numCols && i < cols; i++) {
      for (int j = startRow; j < startRow + numRows && j < rows; j++) {
        clickableGrid[i][j] = false;
      }
    }
  }
  
  //print of the grid
  void drawGrid() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        // if the cell is not clickable i paint it whit a different color 
        if (!clickableGrid[i][j]) {
          fill(135, 97, 47);
        } else {
          // the clickable cell are activated and the cell is green; the disable one are gray
          if (grid[i][j]) {
            fill(135, 97, 47);
          } else {
            fill(60, 195, 60);
          }
        }
        stroke(0);
        rect(i * cellSize, j * cellSize, cellSize, cellSize);
      }
    }
  }
  
  
  //that function determ if the cell is pressed
  void toggleCell(int x, int y) {
    int i = x / cellSize;
    int j = y / cellSize;
    
    if (i >= 0 && i < cols && j >= 0 && j < rows) {
      if (clickableGrid[i][j]) {
        grid[i][j] = !grid[i][j];
      }
    }
  }
  
  void initGrid() {
    grid = new boolean[cols][rows];
    clickableGrid = new boolean[cols][rows];
    
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j] = false;
        clickableGrid[i][j] = true; 
      }
    }
    
    
    disableCells(0/*start colum*/, 8/*end rows*/, 4/*num of colum to disable*/, 1/*num of rows to disable*/); //calling the funtion to disable the cells
    disableCells(3/*start colum*/, 3/*end rows*/, 1/*num of colum to disable*/, 5/*num of rows to disable*/);
    disableCells(3/*start colum*/, 2/*end rows*/, 4/*num of colum to disable*/, 1/*num of rows to disable*/);
    disableCells(7/*start colum*/, 2/*end rows*/, 1/*num of colum to disable*/, 5/*num of rows to disable*/);
    disableCells(8/*start colum*/, 6/*end rows*/, 2/*num of colum to disable*/, 1/*num of rows to disable*/);
  }
}

  

  
