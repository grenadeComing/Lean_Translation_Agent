import Mathlib

/-- Artin, Exercise 2.3.2: In any group, the products a * b and b * a are conjugate. -/
theorem Artin_exercise_2_3_2 (G : Type*) [Group G] (a b : G) : ∃ g : G, g * (a * b) * g⁻¹ = b * a := by sorry
