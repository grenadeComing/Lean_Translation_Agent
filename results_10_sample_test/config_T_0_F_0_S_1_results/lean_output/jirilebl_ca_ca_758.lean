import Mathlib

/-- Polarization identity for complex numbers:
    4 z ⬝ conj w = |z+w|^2 - |z-w|^2 + i (|z+iw|^2 - |z-iw|^2)
-/
theorem polarization_identity (z w : ℂ) :
  4 * z * Complex.conj w =
    (Complex.abs (z + w)) ^ 2 - (Complex.abs (z - w)) ^ 2 +
    Complex.i * ((Complex.abs (z + Complex.i * w)) ^ 2 - (Complex.abs (z - Complex.i * w)) ^ 2) := by sorry
