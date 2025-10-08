import Mathlib

/-- No group of order 224 is simple. -/
theorem no_group_of_order_224_simple {G : Type*} [Group G] [Fintype G] (h : Fintype.card G = 224) :
  ∃ N : Subgroup G, N.normal ∧ N ≠ ⊥ ∧ N ≠ ⊤ := by sorry
