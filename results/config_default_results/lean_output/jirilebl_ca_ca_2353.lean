import Mathlib

-- Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 iff f'(z0) ≠ 0.
-- We express this as a Lean theorem about a fixed z0 : ℂ.

theorem conformalAt_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ} (hf : DifferentiableAt ℂ f z0) :
  ConformalAt f z0 ↔ deriv f z0 ≠ 0 := by
  sorry
