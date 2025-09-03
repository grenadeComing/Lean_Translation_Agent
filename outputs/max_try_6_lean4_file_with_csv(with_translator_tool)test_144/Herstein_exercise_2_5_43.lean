import Mathlib

theorem group_of_card9_is_abelian {G : Type _} [Group G] [Fintype G] (h : Fintype.card G = 9) : ∀ x y : G, x * y = y * x := by sorry
