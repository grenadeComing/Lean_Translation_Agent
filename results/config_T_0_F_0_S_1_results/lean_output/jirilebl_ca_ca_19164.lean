import Mathlib

open Complex

/-!
Two derivative statements for standard complex functions.
`has_deriv_at_arctan` states the derivative of arctan at z is 1/(1+z^2) provided 1+z^2 ≠ 0.
`has_deriv_at_log` states the derivative of the principal complex logarithm at z is 1/z provided z ≠ 0.
-/

theorem has_deriv_at_arctan (z : ℂ) (hz : 1 + z ^ 2 ≠ 0) :
  HasDerivAt Complex.arctan (1 / (1 + z ^ 2)) z := by sorry

theorem has_deriv_at_log (z : ℂ) (hz : z ≠ 0) :
  HasDerivAt Complex.log (1 / z) z := by sorry