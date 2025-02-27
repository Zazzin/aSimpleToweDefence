class Nucleus{
    protected int hp;
    protected boolean isBroke;
    float x;
    float y;
    protected float size;
    color colors;


    Nucleus(float x, float y) {
        this.x = x;
        this.y = y;
        this.hp = 80;
        this.isBroke = false;
        this.size = 40;
    }

    boolean getIsBroke(){
        return this.isBroke;
    }

    void setColors(color newColor){
        this.colors = newColor;
    }

    void setIsBroke(boolean inputValue){
        this.isBroke = inputValue;
    }

    int getHp(){
        return this.hp; 
    }

    void decrestHp(int pointToDecrest){
        if(getHp() <= 0){
            this.hp = 0;
            setIsBroke(true);
        }


        if(getHp() >= 0){
            this.hp = getHp() - pointToDecrest;
        }else{
            setIsBroke(true);
        }
        
    }

    void draw() {
        fill(colors);
        //border color and weight
        stroke(0);
        strokeWeight(2);
        float halfSize = size / 2;

        //create the nucleus shap
        beginShape();
        vertex(x, y - halfSize);
        vertex(x + halfSize, y); 
        vertex(x, y + halfSize); 
        vertex(x - halfSize, y);
        endShape(CLOSE);
  }


}
