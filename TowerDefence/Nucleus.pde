class Nucleus{
    protected int hp = 30;
    protected boolean isBroke = false;

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

        return this.hp
        
    }

    void resetHp(){
        this.hp = 30;
    }
}
