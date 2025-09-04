import Mathlib

/-!
Simple statement: if z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|).
-/

theorem complex.log_abs_bound_of_norm_lt_one {z : ℂ} (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
