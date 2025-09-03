import Mathlib

theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X] {p : ℕ → X}
  (hp : CauchySeq p) {s : ℕ → ℕ} (hs : StrictMono s) {a : X}
  (hsub : Tendsto (p ∘ s) atTop (𝓝 a)) :
  Tendsto p atTop (𝓝 a) := by sorry
