abstract class Enemy{
    protected float x;
    protected float y;
    protected int health;
    protected float speed;
    protected int damage;
    protected int pathIndex = 0;
    protected ArrayList<int[]> path;

    Enemy(float x, float y, int health, float speed, int damage, ArrayList<int[]> path) {
        this.x = x;
        this.y = y;
        this.health = health;
        this.speed = speed;
        this.damage = damage;
        this.path = path;
    }

    void move() {
        if (pathIndex < path.size()) {
            int[] target = path.get(pathIndex);
            float targetX = target[0];
            float targetY = target[1];
            
            float dx = targetX - x;
            float dy = targetY - y;
            float distance = dist(x, y, targetX, targetY);
            
            if (distance < speed) {
                x = targetX;
                y = targetY;
                pathIndex++;
            } else {
                x += speed * dx / distance;
                y += speed * dy / distance;
            }
        }
    }

    int getDamage(){
        return this.damage;
    }

    void setX(float inputX){
        this.x = inputX;
    }

    void setY(float inputY){
        this.y = inputY;
    }

    boolean isAlive() {
        return health > 0;
    }

    abstract void display();

    abstract float getRadius();

}