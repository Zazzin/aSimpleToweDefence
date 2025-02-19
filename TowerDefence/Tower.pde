abstract class Tower {
    float x, 
    float y; 
    float range; 
    int damage; 
    int cooldown; // recharge time for the next bullet
    int timer = 0; // timer to start the recharge process

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