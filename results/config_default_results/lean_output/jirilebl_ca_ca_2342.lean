import Mathlib
open Complex

/-- We define a function f to be conformal at z0 if it has a (complex) derivative at z0
    which is nonzero. This captures the usual notion of being angle-preserving at that point. -/
def IsConformalAt (f : ℂ → ℂ) (z0 : ℂ) : Prop :=
  ∃ (c : ℂ), c ≠ 0 ∧ HasDerivAt f c z0

/-- Suppose f : ℂ → ℂ is holomorphic. Show that f is conformal at a point z0 if and only if f'(z0) ≠ 0. -/
theorem conformal_at_iff_deriv_ne_zero (f : ℂ → ℂ) (z0 : ℂ) (h : DifferentiableAt ℂ f z0) :
  IsConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry
