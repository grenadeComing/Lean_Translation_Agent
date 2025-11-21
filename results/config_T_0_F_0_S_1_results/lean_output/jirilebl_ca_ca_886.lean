import Mathlib

theorem polarization_identity (z w : ℂ) :
  (4 : ℂ) * z * Complex.conj w =
    (Complex.abs (z + w) ^ 2 : ℂ) - (Complex.abs (z - w) ^ 2 : ℂ)
    + Complex.I * ((Complex.abs (z + Complex.I * w) ^ 2 : ℂ) - (Complex.abs (z - Complex.I * w) ^ 2 : ℂ)) := by sorry