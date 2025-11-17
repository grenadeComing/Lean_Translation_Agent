import Mathlib

/-- Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at z0 iff f'(z0) ≠ 0. -/
theorem conformalAt_iff_deriv_ne_zero_of_holomorphic {f : ℂ → ℂ} {z0 : ℂ}
  (hf : DifferentiableAt ℂ f z0) : ConformalAt f z0 ↔ deriv f z0 ≠ 0 := by
  sorry
