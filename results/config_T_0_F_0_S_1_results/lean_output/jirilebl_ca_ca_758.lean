import Mathlib

theorem polarization_identity (z w : ℂ) :
  (4 : ℂ) * z * Complex.conj w =
    Complex.ofReal ((Complex.abs (z + w)) ^ 2 - (Complex.abs (z - w)) ^ 2) +
    Complex.I * Complex.ofReal ((Complex.abs (z + Complex.I * w)) ^ 2 - (Complex.abs (z - Complex.I * w)) ^ 2) := by sorry
