import Mathlib

variable {G : Type _} [Group G]

theorem herstein_exercise_2_2_3 (k : Int)
  (h1 : ∀ a b : G, (a * b) ^ k = a ^ k * b ^ k)
  (h2 : ∀ a b : G, (a * b) ^ (k + 1) = a ^ (k + 1) * b ^ (k + 1))
  (h3 : ∀ a b : G, (a * b) ^ (k + 2) = a ^ (k + 2) * b ^ (k + 2)) :
  ∀ a b : G, a * b = b * a := by sorry
