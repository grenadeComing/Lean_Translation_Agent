import Mathlib

/-!
Polarization identity for complex numbers:
4 z \bar{w} = |z+w|^2 - |z-w|^2 + i ( |z+iw|^2 - |z-iw|^2 ).
-/

theorem polarization_identity (z w : Complex) :
  (4 : Complex) * z * Complex.conj w =
    Complex.ofReal (Complex.absSq (z + w)) - Complex.ofReal (Complex.absSq (z - w)) +
    Complex.i * (Complex.ofReal (Complex.absSq (z + Complex.i * w)) - Complex.ofReal (Complex.absSq (z - Complex.i * w))) := by sorry
