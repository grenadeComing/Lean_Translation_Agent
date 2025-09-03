import Mathlib

/-!
Herstein, Exercise 2.2.3.
If G is a group in which (ab)^i = a^i b^i for three consecutive integers i,
then G is abelian.
-/

theorem Herstein_exercise_2_2_3 {G : Type*} [Group G] :
  (∃ k : Int, ∀ a b : G,
    (a * b) ^ k = a ^ k * b ^ k ∧
    (a * b) ^ (k + 1) = a ^ (k + 1) * b ^ (k + 1) ∧
    (a * b) ^ (k + 2) = a ^ (k + 2) * b ^ (k + 2)) →
  ∀ a b : G, a * b = b * a := by sorry
