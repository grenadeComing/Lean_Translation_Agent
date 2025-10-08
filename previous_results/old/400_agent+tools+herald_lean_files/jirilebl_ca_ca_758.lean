import Mathlib

/-!
Polarization identity for complex numbers:
4 * z * conj w = |z+w|^2 - |z-w|^2 + I * (|z+I*w|^2 - |z-I*w|^2).
We express conj w as Complex.ofReal w.re - I * Complex.ofReal w.im to avoid relying on a specific `conj` name.
-/

theorem polarization_identity (z w : ℂ) :
  4 * z * (Complex.ofReal w.re - Complex.I * Complex.ofReal w.im) =
    Complex.normSq (z + w) - Complex.normSq (z - w) +
    Complex.I * (Complex.normSq (z + Complex.I * w) - Complex.normSq (z - Complex.I * w)) := by sorry
