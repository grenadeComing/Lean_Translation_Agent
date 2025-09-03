import Mathlib

variable {G : Type*} [Group G]

/-- If every element of a group squares to 1, then the group is abelian. -/
theorem Dummit_Foote_exercise_1_1_25 (h : ∀ x : G, x * x = 1) : ∀ a b : G, a * b = b * a := by sorry
