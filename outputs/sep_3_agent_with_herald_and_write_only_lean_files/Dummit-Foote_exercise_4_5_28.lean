import Mathlib

open Subgroup

/-- Let G be a group of order 105. If a Sylow 3-subgroup of G is normal then G is abelian. -/
theorem Dummit_Foote_exercise_4_5_28 {G : Type*} [Group G] [Fintype G]
  (h_card : Fintype.card G = 105)
  (h3_normal : ∃ H : Subgroup G, Fintype.card H = 3 ∧ Normal H) :
  ∀ x y : G, x * y = y * x := by sorry
