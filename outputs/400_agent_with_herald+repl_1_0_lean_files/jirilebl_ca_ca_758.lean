import Mathlib

open Complex

theorem polarization_identity (z w : Complex) :
  (4 : Complex) * z * conj w = (z + w) * conj (z + w) - (z - w) * conj (z - w)
    + I * ((z + I * w) * conj (z + I * w) - (z - I * w) * conj (z - I * w)) := by sorry
