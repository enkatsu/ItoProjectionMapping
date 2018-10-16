// MEMO: あまりいじらなくて良いと思う
class FireParticle {
  PVector pos;
  PVector vel;
  PVector acc;
  float lifespan;
  PImage img;
  color red;

  FireParticle(float x, float y, PImage img_) {
    acc = new PVector(0, 0);
    vel = PVector.random2D();
    pos = new PVector(x, y);
    lifespan = 255;
    img = img_;
    
    pushStyle();
    // tint用の色(赤周辺)を生成
    colorMode(HSB, 360, 100, 100, 255);
    red = color(random(0, 30), 100, 255);
    popStyle();
  }

  void run() {
    update();
    render();
  }

  void applyForce(PVector f) {
    acc.add(f);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    lifespan -= 2.0;
  }

  void render() {
    pushStyle();
    imageMode(CENTER);
    tint(red, lifespan);
    image(img, pos.x, pos.y, 32, 32);
    popStyle();
  }

  boolean isDead() {
    if (lifespan <= 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
