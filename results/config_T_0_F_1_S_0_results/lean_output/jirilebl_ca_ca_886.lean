import Mathlib

open Complex

theorem polarization_identity (z w : ℂ) :
  4 * z * Star.star w =
    (z + w) * Star.star (z + w) - (z - w) * Star.star (z - w) +
    I * ((z + I * w) * Star.star (z + I * w) - (z - I * w) * Star.star (z - I * w)) := by
  sorry
