import Mathlib

open Complex

theorem polarization_identity (z w : ℂ) :
  4 * z * ((w.re : ℂ) - (w.im : ℂ) * I) =
    ofReal (Complex.abs (z + w) ^ 2 - Complex.abs (z - w) ^ 2)
    + I * ofReal (Complex.abs (z + I * w) ^ 2 - Complex.abs (z - I * w) ^ 2) := by sorry
