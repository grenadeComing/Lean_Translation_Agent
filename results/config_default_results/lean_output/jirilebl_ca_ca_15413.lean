import Mathlib

open Complex

theorem complex_exp_tail_bound (z : ℂ) (n : ℕ) :
  abs ((∑ k in Finset.range (n + 1), z ^ k / (↑(Nat.factorial k) : ℂ)) - cexp z) ≤
    (abs z) ^ (n + 1) / (↑(Nat.factorial (n + 1)) : ℝ) * Real.exp (abs z) := by sorry
