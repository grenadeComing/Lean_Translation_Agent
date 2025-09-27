import Mathlib

open Set

theorem bounded_uniformly_continuous_on_riemann {a b : ℝ} {f : ℝ → ℝ}
  (hbound : ∃ M, ∀ x ∈ Icc a b, |f x| ≤ M) (huc : UniformContinuousOn f (Icc a b)) :
  IntervalIntegrable f volume a b := by sorry
