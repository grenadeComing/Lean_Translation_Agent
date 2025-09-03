import Mathlib

/-- Exercise 1.1.22(a) (Dummit & Foote): If x and g are elements of the group G, then |x| = |g^{-1} x g|. -/
theorem dummit_foote_exercise_1_1_22a {G : Type _} [Group G] (x g : G) : orderOf x = orderOf (g⁻¹ * x * g) := by sorry
