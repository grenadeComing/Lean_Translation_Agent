import Mathlib

/-!
Let z be a complex number. Show that the derivative of arctan at z is 1/(1+z^2),
and the derivative of the complex logarithm at z is 1/z where defined (z ≠ 0).
-/

open Complex

/-- The derivative of `Complex.arctan` is `1 / (1 + z ^ 2)`. -/
theorem hasDerivAt_arctan (z : ℂ) : HasDerivAt Complex.arctan (1 / (1 + z ^ 2)) z := by sorry

/-- The derivative of `Complex.log` is `1 / z` for z ≠ 0. -/
theorem hasDerivAt_log {z : ℂ} (hz : z ≠ 0) : HasDerivAt Complex.log (1 / z) z := by sorry
