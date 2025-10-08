import Mathlib
open MulAction Subgroup
open Pointwise

/-- Prove that a group of order 200 has a normal Sylow 5-subgroup. -/
theorem normal_sylow_5_of_order_200 {G : Type*} [Group G] [Fintype G] (h : Fintype.card G = 200) :
  ∃! H : Subgroup G, Fintype.card H = 5 := by sorry