import Mathlib

/-- Polarization identity:
    4 * z * conj w = |z+w|^2 - |z-w|^2 + i (|z + i w|^2 - |z - i w|^2)

  Here we expand the squared norms as z * conj z. -/
theorem polarization_identity (z w : ℂ) :
  4 * z * Complex.conj w =
    (z + w) * Complex.conj (z + w) - (z - w) * Complex.conj (z - w) +
    Complex.I * ((z + Complex.I * w) * Complex.conj (z + Complex.I * w) - (z - Complex.I * w) * Complex.conj (z - Complex.I * w)) := by sorry
