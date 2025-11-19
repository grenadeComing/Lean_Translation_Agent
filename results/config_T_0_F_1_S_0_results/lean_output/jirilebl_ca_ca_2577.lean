import Mathlib

theorem max_modulus_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (h : DifferentiableOn ℂ f U)
  {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r : ℝ, 0 < r ∧ Metric.ball z0 r ⊆ U ∧ ∀ z ∈ Metric.ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ (∀ z ∈ V, f z = f z0) := by sorry
