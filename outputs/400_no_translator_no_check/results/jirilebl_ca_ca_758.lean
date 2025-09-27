import Mathlib

/-!
Polarization identity for complex numbers:
4 * z * star w = |z+w|^2 - |z-w|^2 + i (|z + i w|^2 - |z - i w|^2)
-/

theorem polarization_identity (z w : ℂ) :
  4 * z * star w =
    Complex.ofReal (Complex.normSq (z + w) - Complex.normSq (z - w)) +
      Complex.I * Complex.ofReal (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by
  sorry
