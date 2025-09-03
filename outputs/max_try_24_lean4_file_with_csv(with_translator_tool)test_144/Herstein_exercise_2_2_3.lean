import Mathlib

-- Herstein Exercise 2.2.3
theorem herstein_exercise_2_2_3 {G : Type _} [Group G] (i0 : Int)
  (h1 : ∀ a b : G, (a * b) ^ i0 = a ^ i0 * b ^ i0)
  (h2 : ∀ a b : G, (a * b) ^ (i0 + 1) = a ^ (i0 + 1) * b ^ (i0 + 1))
  (h3 : ∀ a b : G, (a * b) ^ (i0 + 2) = a ^ (i0 + 2) * b ^ (i0 + 2)) :
  ∀ a b : G, a * b = b * a := by sorry
