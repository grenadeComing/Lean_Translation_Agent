import Mathlib

/-!
Simple translation: If z ∈ ℂ with |z| < 1, then
  ∑_{n=1}^∞ |z|^n = |z| / (1 - |z|).
We express the sum starting at n = 1 as ∑' (n : ℕ), |z|^(n+1).
-/

theorem tsum_abs_geometric_of_abs_lt_one (z : ℂ) (hz : abs z < 1) :
  ∑' n : ℕ, abs z ^ (n + 1) = abs z / (1 - abs z) := by sorry
