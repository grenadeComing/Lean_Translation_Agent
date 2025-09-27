import Mathlib

/-- If z,w ∈ ℂ and |z| = |w|, then |z+w| = |z-w| iff z * star w is purely imaginary. -/
theorem jirilebl_ca_ca_18541 (z w : ℂ) (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ (z * Star.star w).re = 0 := by sorry
