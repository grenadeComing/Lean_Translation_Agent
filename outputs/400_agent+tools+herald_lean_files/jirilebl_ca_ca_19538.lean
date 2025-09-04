import Mathlib

noncomputable section

/-- Define a helper sequence f with f 0 = 0 to avoid division by zero. -/
noncomputable def f (z : ℂ) (n : ℕ) : ℝ := if n = 0 then 0 else (Complex.abs z) ^ n / (n : ℝ)

theorem sum_abs_pow_div_le (z : ℂ) (h : Complex.abs z < 1) :
  ∑' n : ℕ, f z n ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
