import Mathlib

-- For z : Complex with abs z < 1, the geometric series of abs z sums to abs z / (1 - abs z).

theorem sum_abs_geometric {z : Complex} (hz : Complex.abs z < (1 : Real)) :
  ∑' (n : ℕ), (Complex.abs z) ^ (n + 1) = Complex.abs z / ((1 : Real) - Complex.abs z) := by
  sorry
