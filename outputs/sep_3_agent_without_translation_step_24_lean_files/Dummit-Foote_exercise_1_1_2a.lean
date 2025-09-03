import Mathlib

/-- Define the operation ⋆ on ℤ by a ⋆ b = a - b. -/
def star (a b : Int) : Int := a - b

/-- The operation ⋆ is not commutative on ℤ. -/
theorem Dummit_Foote_exercise_1_1_2a : ¬∀ a b : Int, star a b = star b a := by
  sorry
