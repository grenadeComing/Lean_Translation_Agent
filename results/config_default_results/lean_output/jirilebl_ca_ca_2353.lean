import Mathlib

/-- For a holomorphic function f : ℂ → ℂ, f is conformal at z0 iff f'(z0) ≠ 0. -/
theorem conformal_at_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ} (hf : DifferentiableAt ℂ f z0) :
  ConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry
