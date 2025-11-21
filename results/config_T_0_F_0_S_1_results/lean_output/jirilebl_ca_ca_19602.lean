import Mathlib

open Set Metric

theorem zero_of_derivative_has_finite_order (U : Set ℂ) (f : ℂ → ℂ) (z0 : ℂ)
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) (hz0 : z0 ∈ U) (hf_not_const : ¬ IsConstantOn f U)
  (hder0 : deriv f z0 = 0) :
  ∃ (n : ℕ) (r : ℝ) (g : ℂ → ℂ), 0 < r ∧ Metric.ball z0 r ⊆ U ∧ IsHolomorphicOn g (Metric.ball z0 r) ∧
    (∀ z ∈ Metric.ball z0 r, deriv f z = (z - z0) ^ n * g z) ∧ g z0 ≠ 0 := by sorry