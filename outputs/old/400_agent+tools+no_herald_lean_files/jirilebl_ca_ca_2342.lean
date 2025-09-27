import Mathlib

open Complex

variable (f : ℂ → ℂ) (z0 : ℂ)

/-- If f is holomorphic (complex-differentiable) at z0, then f is conformal at z0 iff the complex
derivative at z0 is nonzero. -/
theorem holomorphic_conformal_at_iff (h : DifferentiableAt ℂ f z0) : ConformalAt (fun z => f z) z0 ↔ deriv f z0 ≠ 0 := by sorry
