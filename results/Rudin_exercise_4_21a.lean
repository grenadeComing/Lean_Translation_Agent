import Mathlib

variable {X : Type*} [MetricSpace X]

theorem Rudin_exercise_4_21a {K F : Set X} (hK : IsCompact K) (hF : IsClosed F) (hdisj : Disjoint K F) :
  ∃ δ : ℝ, δ > 0 ∧ ∀ p ∈ K, ∀ q ∈ F, dist p q > δ := by sorry
