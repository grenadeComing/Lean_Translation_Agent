import Mathlib

/-- Polarization identity for complex numbers: for all z, w : ℂ,
    4 * z * conj w = |z + w|^2 - |z - w|^2 + I * (|z + I w|^2 - |z - I w|^2).
    Here `star w` denotes the complex conjugate and `Complex.normSq` is |·|^2. -/
theorem polarization_identity (z w : ℂ) :
  4 * z * star w =
    Complex.ofReal (Complex.normSq (z + w) - Complex.normSq (z - w))
    + Complex.I * Complex.ofReal (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by sorry
