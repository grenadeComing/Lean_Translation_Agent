import Mathlib

/-- Suppose f is a uniformly continuous mapping of a metric space X into a metric space Y.
    Then for every Cauchy sequence x : ℕ → X, the sequence f ∘ x is a Cauchy sequence in Y. -/
theorem Rudin_exercise_4_11a {X Y : Type _} [MetricSpace X] [MetricSpace Y] {f : X → Y}
  (hf : UniformContinuous f) {x : ℕ → X} (hx : CauchySeq x) : CauchySeq (f ∘ x) := by
  sorry
