import Mathlib

/-- If z and w have equal modulus, then |z+w| = |z-w| iff z * conj w has zero real part. -/
theorem jirilebl_ca_ca_14412 (z w : ℂ) (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ Complex.re (z * (Complex.ofReal w.re - Complex.ofReal w.im * Complex.I)) = 0 := by
  sorry
