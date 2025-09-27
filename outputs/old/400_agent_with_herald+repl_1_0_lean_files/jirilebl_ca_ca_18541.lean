import Mathlib

theorem jirilebl_ca_ca_18541 (z w : Complex) (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔ Complex.re (z * Complex.conj w) = 0 := by sorry
