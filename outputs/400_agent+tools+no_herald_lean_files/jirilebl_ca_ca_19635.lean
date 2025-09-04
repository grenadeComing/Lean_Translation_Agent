import Mathlib

open Set Metric

theorem critical_points_isolated {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (hfnc : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) :
  ∀ z0 ∈ U, deriv f z0 = 0 → ∃ r > 0, ∀ z ∈ U, dist z z0 < r → (deriv f z = 0 → z = z0) := by sorry
