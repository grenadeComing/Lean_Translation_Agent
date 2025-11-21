import Mathlib

/-- For z ∈ ℂ with |z| < 1, |log(1 - z)| ≤ |z| / (1 - |z|). -/
theorem complex_log_one_sub_abs_le (z : Complex) (hz : Complex.abs z < (1 : ℝ)) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
