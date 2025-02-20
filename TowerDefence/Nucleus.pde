class Nucleus{
    protected int hp;
    protected boolean isBroke;
    float x;
    float y;
    protected float size;


    Nucleus(float x, float y) {
        this.x = x;
        this.y = y;
        this.hp = 30;
        this.isBroke = false;
        this.size = 40;
    }

    boolean getIsBroke(){
        return this.isBroke;
    }

    void setIsBroke(boolean inputValue){
        this.isBroke = inputValue;
    }

    int getHp(){
        return this.hp; 
    }

    void decrestHp(int pointToDecrest){
        if(getHp() >= 0){
            this.hp = getHp() - pointToDecrest;
        }else{
            setIsBroke(true);
        }

        
    }

    void resetHp(){
        this.hp = 30;
    }

    void draw() {
        fill(0, 0, 255);       // Colore di riempimento (blu)
        stroke(0);             // Colore del bordo (nero)
        strokeWeight(2);       // Spessore del bordo
        float halfSize = size / 2;
    
        beginShape();
        vertex(x, y - halfSize); // vertice superiore
        vertex(x + halfSize, y); // vertice destro
        vertex(x, y + halfSize); // vertice inferiore
        vertex(x - halfSize, y); // vertice sinistro
        endShape(CLOSE);
  }


}
