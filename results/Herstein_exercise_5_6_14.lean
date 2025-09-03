import Mathlib

open Polynomial

/-- Herstein Exercise 5.6.14:
If F has characteristic p ≠ 0 and m = p^n, then the roots of X^m - X are distinct.
We state this by showing the derivative of X^(p^n) - X is nonzero. -/

theorem herstein_exercise_5_6_14 {F : Type _} [Field F] {p : ℕ} (hp : CharP F p) (hp0 : p ≠ 0) (n : ℕ) :
  derivative ((Polynomial.X : Polynomial F) ^ (p ^ n) - Polynomial.X) ≠ 0 := by sorry
