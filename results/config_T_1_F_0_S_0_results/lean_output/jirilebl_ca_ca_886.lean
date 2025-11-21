import Mathlib

/-- Polarization identity: 4 z * conj w = |z+w|^2 - |z-w|^2 + i (|z + i w|^2 - |z - i w|^2). -/
theorem polarization_identity (z w : ℂ) :
  4 * z * Complex.conj w =
    Complex.ofReal (Complex.normSq (z + w) - Complex.normSq (z - w))
    + Complex.I * Complex.ofReal (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by sorry