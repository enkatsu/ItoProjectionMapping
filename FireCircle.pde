class FireCircle {
  ArrayList<FireParticle> particles;
  PImage[] textures;

  FireCircle() {
    particles = new ArrayList();
    textures = new PImage[5];
    textures[0] = loadImage("corona.png");
    textures[1] = loadImage("emitter.png");
    textures[2] = loadImage("particle.png");
    textures[3] = loadImage("texture.png");
    textures[4] = loadImage("reflection.png");
  }

  void run(PVector center, float radius) {    
    // パーティクルの追加
    for (int i = 0; i < 10; i++) {
      // FIXME: ここの座標を円に修正
      addParticle(random(0, width), mouseY);
    }
    // FIXME: ここのベクトルを調整
    //PVector up = new PVector(0, 0.2);
    //applyForce(up);
    for (int i = particles.size()-1; i >= 0; i--) {
      FireParticle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }

  void addParticle(float x, float y) {
    int r = int(random(textures.length));
    particles.add(new FireParticle(x, y, textures[r]));
  }


  void applyForce(PVector f) {
    for (FireParticle p : particles) {
      p.applyForce(f);
    }
  }

  void addParticle(FireParticle p) {
    particles.add(p);
  }

  boolean dead() {
    if (particles.isEmpty()) {
      return true;
    } else {
      return false;
    }
  }
}
