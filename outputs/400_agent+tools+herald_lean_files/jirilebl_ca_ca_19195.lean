import Mathlib

/-!
A statement: for |z| < 1, log (1 - z) = - \sum_{n=1}^\infty z^n / n.
We state it in Lean and leave the proof as `sorry` as requested.
-/

theorem complex.log_one_sub_series (z : ℂ) (h : Complex.abs z < 1) :
  Complex.log (1 - z) = -∑' (n : ℕ), z^(n+1) / (n+1) := by sorry
