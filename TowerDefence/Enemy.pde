abstract class Enemy{
    protected float x;
    protected float y;
    protected int health;
    protected float speed;
    protected int damage;

    Enemy(float x, float y, int health, float speed, int damage) {
        this.x = x;
        this.y = y;
        this.health = health;
        this.speed = speed;
        this.damage = damage;
    }

    void setX(float inputX){
        this.x = inputX;
    }

    void setY(float inputY){
        this.y = inputY;
    }

    abstract void display();

    boolean isAlive() {
        return health > 0;
    }


}
