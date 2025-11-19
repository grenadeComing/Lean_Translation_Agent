import Mathlib

/-- Polarization identity for complex numbers: for all z w : ℂ,
    4 * z * star w = |z + w|^2 - |z - w|^2 + i * (|z + i w|^2 - |z - i w|^2).
-/
theorem polarization_identity (z w : ℂ) :
  (4 : ℂ) * z * star w =
    (Complex.normSq (z + w) - Complex.normSq (z - w)) +
      Complex.I * (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by sorry
