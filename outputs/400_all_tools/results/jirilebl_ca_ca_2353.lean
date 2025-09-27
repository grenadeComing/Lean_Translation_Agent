import Mathlib
open Complex
open Complex ContinuousLinearMap
open scoped ComplexConjugate

/-- Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 if and only if f'(z0) ≠ 0. -/
theorem conformal_at_iff_deriv_ne_zero {f : ℂ → ℂ} {z₀ : ℂ} (hf : DifferentiableAt ℂ f z₀) :
  ConformalAt f z₀ ↔ deriv f z₀ ≠ 0 := by sorry
