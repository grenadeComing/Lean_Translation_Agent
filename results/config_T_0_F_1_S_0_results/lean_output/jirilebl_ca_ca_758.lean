import Mathlib

theorem polarization_identity (z w : ℂ) :
  4 * z * Star.star w = (z + w) * Star.star (z + w) - (z - w) * Star.star (z - w)
    + Complex.I * ((z + Complex.I * w) * Star.star (z + Complex.I * w) - (z - Complex.I * w) * Star.star (z - Complex.I * w)) := by
  sorry
