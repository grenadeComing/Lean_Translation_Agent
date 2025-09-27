import Mathlib

open Complex

-- Derivative of complex arctan where denominator nonzero
example (z : ℂ) (hz : 1 + z ^ 2 ≠ 0) : HasDerivAt Complex.arctan (1 / (1 + z ^ 2)) z := by sorry

-- Derivative of complex log where defined (z ≠ 0)
example (z : ℂ) (hz : z ≠ 0) : HasDerivAt Complex.log (1 / z) z := by sorry
