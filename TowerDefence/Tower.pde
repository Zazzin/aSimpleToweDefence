abstract class Tower {
    protected float x;
    protected float y; 
    protected float range; 
    protected int damage; 
    protected int cooldown; // recharge time for the next bullet
    protected int timer = 0; // timer to start the recharge process

    Tower(){
        this.x = 0;
        this.y = 0;
        this.range = 0.0;
        this.damage = 0;
        this.cooldown = 0;
    }

    Tower(float x, float y, float range, int damage, int cooldown) {
        this.x = x;
        this.y = y;
        this.range = range;
        this.damage = damage;
        this.cooldown = cooldown;
    }

    void display() {
        fill(200, 200, 0); // yellow
        rect(x - 15, y - 15, 30, 30);
    }

    void attack(ArrayList<Enemy> enemies) {
        if (timer > 0) {
            timer--;
            return;
        }
        for (Enemy e : enemies) {
            float distance = dist(x, y, e.x, e.y);
            if (distance < range) {
                e.health -= damage;
                timer = cooldown;
                break; // go out to the for cycle, in this way the tower hit only one enemy
            }
        }
    }
}
