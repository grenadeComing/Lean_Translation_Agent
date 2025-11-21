import Mathlib

open BigOperators Filter Set

theorem geometric_series_tendsto_uniformly_on_Icc (c : ℝ) (hc1 : 0 ≤ c) (hc2 : c < 1) :
  tendsto_uniformly_on (λ n : ℕ => λ x : ℝ => ∑ k in Finset.range (n + 1), x ^ k)
    (λ x => 1 / (1 - x)) at_top (Icc (-c) c) := by sorry