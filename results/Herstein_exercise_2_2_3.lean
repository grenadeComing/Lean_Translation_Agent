import Mathlib

/-- If G is a group and for three consecutive integers k, k+1, k+2 we have
    (a * b)^i = a^i * b^i for all a, b in G, then G is abelian. -/
theorem Herstein_exercise_2_2_3 {G : Type _} [Group G] (k : Int)
  (h0 : ∀ a b : G, (a * b) ^ k = a ^ k * b ^ k)
  (h1 : ∀ a b : G, (a * b) ^ (k + 1) = a ^ (k + 1) * b ^ (k + 1))
  (h2 : ∀ a b : G, (a * b) ^ (k + 2) = a ^ (k + 2) * b ^ (k + 2)) :
  ∀ a b : G, a * b = b * a := by sorry
