import Mathlib

variable {G : Type*} [Group G]

/-- If x and g are elements of the group G, then the order of x equals the order of g⁻¹ x g. -/
theorem Dummit_Foote_exercise_1_1_22a (x g : G) : orderOf x = orderOf (g⁻¹ * x * g) := by
  sorry
