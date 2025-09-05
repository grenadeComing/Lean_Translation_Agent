import Mathlib

open Complex

/-!
Polarization identity:
4 z * conj w = |z+w|^2 - |z-w|^2 + i (|z+ i w|^2 - |z - i w|^2)
-/-

theorem polarization_identity (z w : ℂ) :
  4 * z * conj w =
    Complex.ofReal ((abs (z + w))^2 - (abs (z - w))^2) +
    I * Complex.ofReal ((abs (z + I * w))^2 - (abs (z - I * w))^2) := by sorry
