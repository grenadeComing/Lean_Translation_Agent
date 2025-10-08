import Mathlib

/-- Suppose K and F are disjoint sets in a metric space X, K is compact, F is closed.
    There exists δ > 0 such that dist p q ≥ δ for all p ∈ K and q ∈ F. -/
theorem Rudin_exercise_4_21a {X : Type _} [MetricSpace X] {K F : Set X}
  (hK : IsCompact K) (hF : IsClosed F) (hdis : Disjoint K F) :
  ∃ δ > 0, ∀ p ∈ K, ∀ q ∈ F, δ ≤ dist p q := by sorry
