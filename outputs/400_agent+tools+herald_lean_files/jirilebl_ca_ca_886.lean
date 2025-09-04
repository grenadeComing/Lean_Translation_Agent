import Mathlib

/-- Polarization identity for complex numbers: 4 z * conj w = |z+w|^2 - |z-w|^2 + i(|z+iw|^2 - |z-iw|^2). -/
theorem polarization_identity (z w : ℂ) :
  4 * z * (starRingEnd ℂ w) =
    (Complex.normSq (z + w) : ℂ) - (Complex.normSq (z - w) : ℂ)
      + Complex.I * ((Complex.normSq (z + Complex.I * w) : ℂ) - (Complex.normSq (z - Complex.I * w) : ℂ)) := by
  sorry
