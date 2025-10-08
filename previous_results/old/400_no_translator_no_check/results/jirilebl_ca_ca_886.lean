import Mathlib

open Complex

/-- Polarization identity for complex numbers: 4 z * star w = |z+w|^2 - |z-w|^2 + i(|z+iw|^2 - |z-iw|^2). -/
theorem polarization_identity (z w : ℂ) :
  (4 : ℂ) * z * Star.star w =
    (normSq (z + w) : ℂ) - (normSq (z - w) : ℂ) +
    I * ((normSq (z + I * w) : ℂ) - (normSq (z - I * w) : ℂ)) := by
  sorry
