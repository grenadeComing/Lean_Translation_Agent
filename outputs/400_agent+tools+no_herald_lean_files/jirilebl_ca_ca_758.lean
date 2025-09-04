import Mathlib

/-- Polarization identity for complex numbers. -/
theorem polarization_identity (z w : Complex) :
  4 * z * (Complex.re w - Complex.I * Complex.im w) =
    (Complex.ofReal (Complex.normSq (z + w)) - Complex.ofReal (Complex.normSq (z - w))) +
    Complex.I * (Complex.ofReal (Complex.normSq (z + Complex.I * w)) - Complex.ofReal (Complex.normSq (z - Complex.I * w))) := by
  sorry
