class CircleAnimator {
  PVector center, stratPoint, endPoint;
  float radius, startRadius, endRadius;

  CircleAnimator(PVector stratPoint_, PVector endPoint_, float startRadius_, float endRadius_) {
    stratPoint = stratPoint_;
    endPoint = endPoint_;
    startRadius = startRadius_;
    endRadius = endRadius_;
  }

  /**
   startRadiusからendRadiusまで
   radiusを小さくしていく処理
   計算結果をcenterに代入
   計算結果をradiusに代入
   */
  void updateCircle() {
  }

  /**
   デバッグ用の円を描画
   */
  void drawDebugCircle() {
    pushStyle();
    noFill();
    stroke(255, 255, 255);
    ellipseMode(RADIUS);
    ellipse(center.x, center.y, radius, radius);
    popStyle();
  }

  PVector getCenter() {
    return center;
  }

  float getRadius() {
    return radius;
  }
}
