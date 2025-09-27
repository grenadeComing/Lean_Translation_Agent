import Mathlib

/-!
Herstein, Exercise 4.2.5.
If R is a ring with x^3 = x for all x in R, prove R is commutative.
We state the result and leave the proof as `sorry`.
-/

theorem herstein_exercise_4_2_5 {R : Type _} [Ring R] (h : ∀ x : R, x ^ 3 = x) : ∀ a b : R, a * b = b * a := by
  sorry
