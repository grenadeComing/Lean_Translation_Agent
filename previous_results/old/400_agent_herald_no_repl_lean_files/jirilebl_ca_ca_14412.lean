import Mathlib

open Complex

/--
If z,w ∈ ℂ and |z| = |w|, then |z+w| = |z-w| iff z * conj w is purely imaginary.
-/
theorem jirilebl_ca_ca_14412 {z w : ℂ} (h : abs z = abs w) :
  abs (z + w) = abs (z - w) ↔ IsPureImaginary (z * conj w) := by sorry
