import Mathlib

/--
If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|).
-/
theorem jirilebl_ca_ca_14730 (z : Complex) (h : abs z < 1) : abs (Complex.log (1 - z)) ≤ abs z / (1 - abs z) := by sorry
