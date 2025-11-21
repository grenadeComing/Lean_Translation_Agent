import Mathlib

/- Polarization identity
   4 * z * conj w = normSq (z + w) - normSq (z - w) + I * (normSq (z + I * w) - normSq (z - I * w))
   Here conj w is expressed as Complex.ofReal w.re - I * Complex.ofReal w.im.
-/

theorem polarization_identity (z w : Complex) :
  4 * (z * (Complex.ofReal w.re - Complex.I * Complex.ofReal w.im)) =
    Complex.normSq (z + w) - Complex.normSq (z - w) +
    Complex.I * (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by sorry
