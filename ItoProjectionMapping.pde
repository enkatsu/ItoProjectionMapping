CircleAnimator ca;
FireCircle fc;
boolean isAnimate;

void setup() {
  size(640, 360, P2D);
  // とりあえず手打ちで中心とかを書く
  ca = new CircleAnimator(
    new PVector(width / 2, height / 2),
    new PVector(width / 2, height / 2),
    100, 10);
  fc = new FireCircle();
  isAnimate = false;
}

void draw() {
  blendMode(ADD);
  background(0);

  if (isAnimate) {
    ca.updateCircle();
    ca.drawDebugCircle();
    fc.run(ca.getCenter(), ca.getRadius());
  }
}

void interaction() {
  isAnimate = true;
}

/**
 デバッグ用
 インタラクションの際にinteraction()を呼ぶ
 例)
 // オーディオ入力の値が閾値異常ならアニメーション開始
 if(audioInputValue > threshold) interaction();
 */
void mousePressed() {
  interaction();
}
