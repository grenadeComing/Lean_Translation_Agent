import Mathlib

/-!
Statement: If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|).
We state the theorem; proof omitted.
-/

theorem complex.log_abs_le_of_abs_lt_one {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
