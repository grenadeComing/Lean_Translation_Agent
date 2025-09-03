import Mathlib
open Cardinal

/-- If x and g are elements of the group G, prove that |x|=\left|g^{-1} x g\right|. Save it to: Dummit-Foote_exercise_1_1_22a.lean -/
theorem card_conj_extracted {G : Type*} [Group G] (x g : G) : orderOf x = orderOf (g⁻¹ * x * g) := by sorry
