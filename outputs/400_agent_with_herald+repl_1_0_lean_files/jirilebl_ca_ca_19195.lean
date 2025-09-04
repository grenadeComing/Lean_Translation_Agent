import Mathlib

/-- For |z| < 1 we have the power series expansion of the complex logarithm:
    log (1 - z) = - \sum_{n=1}^\infty z^n / n.
This statement is given without proof (:= by sorry).
-/
theorem complex.log_one_sub_series {z : ℂ} (h : Complex.abs z < 1) :
  Complex.log (1 - z) = -∑' n : ℕ, z ^ (n + 1) / (n + 1) := by sorry
