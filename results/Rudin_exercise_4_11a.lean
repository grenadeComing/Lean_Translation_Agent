import Mathlib

/-- Rudin: If f is uniformly continuous from a metric space X to a metric space Y,
then f maps Cauchy sequences in X to Cauchy sequences in Y. -/
theorem rudin_exercise_4_11a {X Y : Type _} [MetricSpace X] [MetricSpace Y] {f : X → Y}
  (hf : UniformContinuous f) (x : ℕ → X) (hx : CauchySeq x) : CauchySeq (f ∘ x) := by
  sorry
