import Mathlib

/-- Rudin Ex. 3.20

Suppose {p_n} is a Cauchy sequence in a metric space X, and some subsequence {p_{n_k}} converges to a point p ∈ X.
Prove that the full sequence {p_n} converges to p. -/
theorem Rudin_exercise_3_20 {X : Type*} [MetricSpace X] {u : ℕ → X} (hu : CauchySeq u)
  {φ : ℕ → ℕ} {a : X} (hφ : Filter.Tendsto (u ∘ φ) Filter.atTop (𝓝 a)) :
  Filter.Tendsto u Filter.atTop (𝓝 a) := by sorry
