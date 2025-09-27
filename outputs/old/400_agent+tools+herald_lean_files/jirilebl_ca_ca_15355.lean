import Mathlib

/-- For z in C with |z| < 1, the geometric series of |z| equals |z| / (1 - |z|). -/
theorem complex_abs_geometric_sum (z : Complex) (h : Complex.abs z < 1) :
  ∑' n : ℕ, Complex.abs z ^ n = Complex.abs z / (1 - Complex.abs z) := by sorry
