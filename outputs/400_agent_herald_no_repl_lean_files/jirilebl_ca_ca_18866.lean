import Mathlib

/-
If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|).
Proof omitted.
-/

theorem complex_abs_log_one_sub_le (z : ℂ) (hz : abs z < 1) :
  abs (Complex.log (1 - z)) ≤ abs z / (1 - abs z) := by sorry
