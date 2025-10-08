import Mathlib

open Complex

/--
Let z ∈ ℂ with |z| < 1. Then log(1 - z) = -∑_{n=1}^∞ z^n / n.
We express the right-hand side as ∑' n, z^(n+1)/(n+1) to avoid division by zero at n = 0.
-/
theorem log_one_sub_series {z : ℂ} (hz : |z| < 1) :
  Complex.log (1 - z) = -∑' (n : ℕ), z^(n+1) / (n+1) := by
  sorry
