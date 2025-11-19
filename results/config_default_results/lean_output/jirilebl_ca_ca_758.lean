import Mathlib

/-- Polarization identity: 4 z conj w = |z+w|^2 - |z-w|^2 + i(|z+ i w|^2 - |z - i w|^2) -/ 
theorem polarization_identity (z w : ℂ) :
  4 * z * conj w =
    (‖z + w‖ ^ 2 - ‖z - w‖ ^ 2) + Complex.I * (‖z + Complex.I * w‖ ^ 2 - ‖z - Complex.I * w‖ ^ 2) := by
  sorry
