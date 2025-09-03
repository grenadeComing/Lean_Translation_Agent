import Mathlib

/-!
Exercise: Suppose `f` is a uniformly continuous mapping of a metric space `X` into a metric space `Y`.
Prove that `f(x_n)` is a Cauchy sequence in `Y` for every Cauchy sequence `x_n` in `X`.
-/

theorem Rudin_exercise_4_11a {X Y : Type*} [MetricSpace X] [MetricSpace Y]
  {f : X → Y} (hf : UniformContinuous f) {x : ℕ → X} (hx : CauchySeq x) :
  CauchySeq (fun n => f (x n)) := by sorry
