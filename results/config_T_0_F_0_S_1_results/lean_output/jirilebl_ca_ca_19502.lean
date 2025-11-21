import Mathlib

theorem sum_abs_geometric_series {z : ℂ} (hz : Complex.abs z < 1) :
  ∑' n : ℕ, (Complex.abs z)^(n + 1) = Complex.abs z / (1 - Complex.abs z) := by sorry