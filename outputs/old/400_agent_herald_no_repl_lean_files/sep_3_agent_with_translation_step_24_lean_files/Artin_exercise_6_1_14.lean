import Mathlib

variable {G : Type _} [Group G]

/-- The center of a group. -/
def center (G : Type _) [Group G] : Set G := { z | ∀ g : G, z * g = g * z }

theorem Artin_exercise_6_1_14
  (h : ∃ g0 : G, ∀ a : G, ∃ n : Int, ∃ z : G, z ∈ center G ∧ a = g0 ^ n * z)
  : (∀ a b : G, a * b = b * a) ∧ center G = Set.univ := by sorry
