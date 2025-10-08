import Mathlib

open Set Metric

theorem Rudin_exercise_4_21a {X : Type _} [MetricSpace X] {K F : Set X}
  (hK : IsCompact K) (hF : IsClosed F) (hdisj : Disjoint K F) :
  ∃ δ > 0, ∀ p ∈ K, ∀ q ∈ F, dist p q > δ := by
  sorry
