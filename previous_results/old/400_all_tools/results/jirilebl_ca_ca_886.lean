import Mathlib

/-- Polarization identity for complex numbers: 4 z * conj w = |z+w|^2 - |z-w|^2 + I*(|z+I w|^2 - |z-I w|^2). -/
theorem polarization_identity (z w : ℂ) :
  4 * z * Star.star w =
    ↑(Complex.abs (z + w) ^ 2) - ↑(Complex.abs (z - w) ^ 2)
    + Complex.I * (↑(Complex.abs (z + Complex.I * w) ^ 2) - ↑(Complex.abs (z - Complex.I * w) ^ 2)) := by sorry
