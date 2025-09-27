import Mathlib

/-!
Exercise: If F is of characteristic p ≠ 0, show that all the roots of x^m - x,
where m = p^n, are distinct.
-/-

open Polynomial

theorem herstein_exercise_5_6_14 {F : Type _} [Field F] {p : ℕ} (n : ℕ) [CharP F p] (hp : p ≠ 0) :
  ∀ a : F, ((X ^ (p ^ n) - X : F[X]).eval a = 0) → ((X ^ (p ^ n) - X : F[X]).derivative.eval a ≠ 0) := by sorry
