import Mathlib

open Complex

/-- The complex arctangent is differentiable at z provided 1 + z^2 ≠ 0, with derivative 1/(1+z^2). -/
theorem hasDerivAt_arctan (z : ℂ) (hz : (1 : ℂ) + z ^ 2 ≠ 0) :
  HasDerivAt Complex.arctan ((1 : ℂ) / ((1 : ℂ) + z ^ 2)) z := by sorry

/-- The principal complex logarithm is holomorphic off the nonpositive real axis; in particular,
if z is not on the nonpositive real axis then log has derivative 1/z at z. We express this by the
hypothesis `z.im ≠ 0 ∨ z.re > 0` (i.e. z ∉ (-∞, 0]). -/
theorem hasDerivAt_log (z : ℂ) (h : z.im ≠ 0 ∨ z.re > 0) :
  HasDerivAt Complex.log ((1 : ℂ) / z) z := by sorry