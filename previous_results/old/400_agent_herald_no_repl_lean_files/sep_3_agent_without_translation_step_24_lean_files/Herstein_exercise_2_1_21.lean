import Mathlib

theorem group_of_order_five_is_abelian (G : Type _) [Group G] [Fintype G] (h : Fintype.card G = 5) :
  ∀ x y : G, x * y = y * x := by
  sorry
