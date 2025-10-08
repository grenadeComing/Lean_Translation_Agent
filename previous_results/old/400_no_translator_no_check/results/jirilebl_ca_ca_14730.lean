import Mathlib

open Complex

/--
If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|).
-/
theorem abs_log_one_sub_le (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
