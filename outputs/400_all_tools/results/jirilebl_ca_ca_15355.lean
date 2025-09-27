import Mathlib

/-
Let z ∈ ℂ with |z| < 1. Show that ∑_{n=1}^\infty |z|^n = |z| / (1-|z|).
-/

theorem sum_abs_pow_eq (z : ℂ) (hz : Complex.abs z < 1) :
  HasSum (fun n : ℕ => (Complex.abs z) ^ n) (Complex.abs z / (1 - Complex.abs z)) := by sorry
