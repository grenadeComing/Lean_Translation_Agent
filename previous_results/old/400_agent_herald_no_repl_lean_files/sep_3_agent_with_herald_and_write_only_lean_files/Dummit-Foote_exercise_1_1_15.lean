import Mathlib

/-!
Exercise: Prove that (a_1 a_2 ... a_n)^{-1} = a_n^{-1} a_{n-1}^{-1} ... a_1^{-1} for all a_1, ..., a_n in a group G.
We state a general list version: the inverse of the product of a list equals the product of the inverses in reverse order.
-/

theorem Dummit_Foote_exercise_1_1_15 {G : Type*} [Group G] (l : List G) :
  (l.prod)⁻¹ = (l.reverse.map (·⁻¹)).prod := by sorry
