import Mathlib

open Complex

/-- Polarization identity for complex numbers: 4 z * star w = |z+w|^2 - |z-w|^2 + I (|z+I w|^2 - |z-I w|^2). -/
theorem polarization_identity (z w : ℂ) :
  4 * z * star w =
    (z + w) * star (z + w) - (z - w) * star (z - w) +
    I * ((z + I * w) * star (z + I * w) - (z - I * w) * star (z - I * w)) := by
  sorry
