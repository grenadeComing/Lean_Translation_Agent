/-
Let z ∈ ℂ with |z| < 1. Show that |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
-/
import Mathlib
noncomputable section
open Complex

theorem abs_log_sub_one_le_sum_of_abs_lt_one (z : ℂ) (hz : |z| < 1) :
  |Complex.log (1 - z)| ≤ ∑' n : ℕ, |z| ^ (n+1) / (n+1) ∧
  ∑' n : ℕ, |z| ^ (n+1) / (n+1) ≤ |z| / (1 - |z|) := by
  sorry
