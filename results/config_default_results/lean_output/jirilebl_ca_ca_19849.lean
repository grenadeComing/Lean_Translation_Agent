import Mathlib

/-- For any complex z with Complex.abs z < 1, we have Complex.abs (Complex.arctan z) ≤ (π/4) * Complex.abs z / (1 - Complex.abs z). -/
theorem complex_abs_arctan_bound (z : Complex) (h : Complex.abs z < 1) :
  Complex.abs (Complex.arctan z) ≤ (Real.pi / 4) * Complex.abs z / (1 - Complex.abs z) := by sorry
