class Nucleus{
    int hp = 30;
    boolean isBroke = false;

    boolean getIsBroke(){
        return this.isBroke;
    }

    int getHp(){
        return this.hp; 
    }

    void decrestHp(int pointToDecrest){
        if(getHp() >= 0){
            return getHp() - pointToDecrest;
        }

        return this.hp
        
    }

    void resetHp(){
        this.hp = 30;
    }
}
