import Mathlib

theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X] {p : ℕ → X} (hp : CauchySeq p)
  {s : ℕ → ℕ} (hs : StrictMono s) {a : X}
  (hconv : Filter.Tendsto (p ∘ s) Filter.atTop (nhds a)) :
  Filter.Tendsto p Filter.atTop (nhds a) := by sorry
