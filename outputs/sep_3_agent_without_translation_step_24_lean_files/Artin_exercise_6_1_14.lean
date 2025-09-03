import Mathlib

variable {G : Type*} [Group G]

/-- The center of a group G. -/
def center (G : Type*) [Group G] : Set G := { z | ∀ g : G, z * g = g * z }

/-- Artin Ex. 6.1.14: If G/Z is cyclic then G is abelian and hence G = Z. -/
theorem Artin_exercise_6_1_14
  (h : ∃ a : G, ∀ g : G, ∃ n : Int, ∃ z : G, (∀ t : G, z * t = t * z) ∧ g = a ^ n * z) :
  (∀ x y : G, x * y = y * x) ∧ center G = Set.univ := by sorry
