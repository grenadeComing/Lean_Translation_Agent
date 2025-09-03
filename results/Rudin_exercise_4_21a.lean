import Mathlib

variable {X : Type*} [MetricSpace X]

/-- Rudin Exercise 4.21(a).
Suppose K and F are disjoint sets in a metric space X, K is compact, F is closed.
Then there exists δ > 0 such that d(p, q) > δ for all p ∈ K and q ∈ F. -/
theorem Rudin_exercise_4_21a (K F : Set X)
  (hK : IsCompact K) (hF : IsClosed F) (hdisj : Disjoint K F) :
  ∃ δ : ℝ, 0 < δ ∧ ∀ p ∈ K, ∀ q ∈ F, dist p q > δ := by sorry
