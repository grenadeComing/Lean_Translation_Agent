import Mathlib

/-!
Statement: Let z ∈ ℂ with |z| < 1. Then
|log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
This file contains only the statement (no proof).
-/

theorem complex_log_series_bound (z : Complex) (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (k : ℕ), (Complex.abs z) ^ (k + 1) / ((k + 1) : ℝ) ∧
  ∑' (k : ℕ), (Complex.abs z) ^ (k + 1) / ((k + 1) : ℝ) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
