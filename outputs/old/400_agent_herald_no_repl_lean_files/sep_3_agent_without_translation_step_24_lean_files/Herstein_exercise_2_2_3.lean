import Mathlib

/-!
Herstein, Exercise 2.2.3.
If G is a group in which (ab)^i = a^i b^i for three consecutive integers i, prove that G is abelian.
-/

variable {G : Type*} [Group G]

theorem Herstein_exercise_2_2_3 (k : Int)
  (h0 : ∀ a b : G, (a * b) ^ k = a ^ k * b ^ k)
  (h1 : ∀ a b : G, (a * b) ^ (k + 1) = a ^ (k + 1) * b ^ (k + 1))
  (h2 : ∀ a b : G, (a * b) ^ (k + 2) = a ^ (k + 2) * b ^ (k + 2)) :
  ∀ a b : G, a * b = b * a := by sorry
