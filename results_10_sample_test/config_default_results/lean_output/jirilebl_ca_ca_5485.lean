import Mathlib

/-- Suppose f : 𝔻 → 𝔻 is holomorphic and f(0) = 0, then ‖f'(0)‖ ≤ 1. -/
theorem abs_deriv_le_one_of_holomorphic_on_unit_disk {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (hmap : ∀ z, z ∈ Metric.ball (0 : ℂ) 1 → f z ∈ Metric.ball (0 : ℂ) 1)
  (h0 : f 0 = 0) :
  ‖deriv f 0‖ ≤ 1 := by sorry
