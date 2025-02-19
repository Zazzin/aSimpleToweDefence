class TowerBuilder {
    Tower createTower(float x, float y, PApplet app) {
        if (app.random(1) > 0.5) { //recall applet random
            return new BasicTower(x, y);
        } else {
            return new HeavyTower(x, y);
        }
    }
}