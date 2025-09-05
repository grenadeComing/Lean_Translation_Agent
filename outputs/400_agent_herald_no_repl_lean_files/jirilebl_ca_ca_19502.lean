import Mathlib

open Complex

/-- If |z| < 1, the geometric series of the absolute values equals |z|/(1-|z|). -/
theorem sum_abs_geometric_of_abs_lt_one (z : ℂ) (hz : abs z < 1) :
  ∑' n : ℕ, (abs z)^(n + 1) = abs z / (1 - abs z) := by sorry
