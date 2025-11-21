import Mathlib

/-- Polarization identity for complex numbers.
    4 * z * star w = normSq (z + w) - normSq (z - w) + I * (normSq (z + I * w) - normSq (z - I * w)). -/
theorem polarization_identity (z w : ℂ) :
  4 * z * (star w) =
    (Complex.normSq (z + w) : ℂ) - (Complex.normSq (z - w) : ℂ) +
      Complex.I * ((Complex.normSq (z + Complex.I * w) : ℂ) - (Complex.normSq (z - Complex.I * w) : ℂ)) := by sorry
