import Mathlib

theorem herstein_exercise_2_2_3 {G : Type*} [Group G] {a b : G} {n : Int}
  (h1 : (a * b) ^ n = a ^ n * b ^ n)
  (h2 : (a * b) ^ (n + 1) = a ^ (n + 1) * b ^ (n + 1))
  (h3 : (a * b) ^ (n + 2) = a ^ (n + 2) * b ^ (n + 2)) :
  a * b = b * a := by sorry
