# ItoProjectionMapping

Mainでオーディオ入力を処理して、
interaction()を呼び出すことで、
アニメーションを開始する。

## クラス

### CircleAnimator

- 円のアニメーション開始時の中心点と半径及びアニメーション終了時の中心点と半径から、現在の中心点と半径を計算するクラス
- updateCircle()で計算結果を更新
- getCenter()で現在の中心点を返す
- getRadius()で現在の半径を返す
- drawDebugCircle()でデバッグ用の円を描画

### FireCircle

- FireParticleを使って山焼きの円を描画するクラス
- サンプルのParticleSystemとほぼ同じ
- run()で円の中心点と半径を受け取って描画

### FireParticle

- 炎を表現するパーティクルクラス
- サンプルのParticleとほぼ同じ
