import Mathlib

/-- For complex z with |z| < 1 we have the bound on the complex arctan. -/
theorem abs_arctan_le_pi_div_four_mul_abs_div_sub_one (z : Complex) (h : Complex.abs z < 1) :
  Complex.abs (Complex.arctan z) ≤ (Real.pi / 4) * Complex.abs z / (1 - Complex.abs z) := by sorry
