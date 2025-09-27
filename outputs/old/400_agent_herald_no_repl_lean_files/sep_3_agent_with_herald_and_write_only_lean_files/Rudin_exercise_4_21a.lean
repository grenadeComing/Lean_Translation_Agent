import Mathlib

variable {X : Type _} [MetricSpace X] {K F : Set X}

/-- Rudin exercise: If K and F are disjoint subsets of a metric space X, with K compact and F closed,
then there exists δ > 0 such that dist p q ≥ δ for all p ∈ K and q ∈ F. -/
theorem Rudin_exercise_4_21a (hK : IsCompact K) (hF : IsClosed F) (hdisj : Disjoint K F) :
  ∃ δ : ℝ, δ > 0 ∧ ∀ p ∈ K, ∀ q ∈ F, dist p q ≥ δ := by sorry
