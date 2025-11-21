import Mathlib

open Complex

variable {f : ℂ → ℂ} {z0 : ℂ}

/-- If f is holomorphic at z0, then f is conformal at z0 iff its complex derivative at z0 is nonzero. -/
theorem holomorphic_is_conformal_at_iff_deriv_ne_zero (hf : IsHolomorphicAt f z0) :
  IsConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry