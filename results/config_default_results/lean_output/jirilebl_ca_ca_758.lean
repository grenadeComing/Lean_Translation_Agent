import Mathlib

/-- Polarization identity for complex numbers: 4 z * conj w = |z+w|^2 - |z-w|^2 + i(|z+ i w|^2 - |z - i w|^2). -/
theorem polarization_four_z_bar_w (z w : ℂ) :
  4 * z * (star w) =
    ((Complex.normSq (z + w)) : ℂ) - ((Complex.normSq (z - w)) : ℂ) +
      Complex.I * ((Complex.normSq (z + Complex.I • w) : ℂ) - (Complex.normSq (z - Complex.I • w) : ℂ)) := by
  sorry
