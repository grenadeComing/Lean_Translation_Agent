import Mathlib

open Complex

/-- Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 iff f'(z0) ≠ 0. -/
theorem conformal_at_iff_fderiv_ne_zero {f : ℂ → ℂ} {z0 : ℂ} (h : DifferentiableAt ℂ f z0) :
  ConformalAt f z0 ↔ (fderiv ℂ f z0 ≠ (0 : ℂ →L[ℂ] ℂ)) := by sorry
