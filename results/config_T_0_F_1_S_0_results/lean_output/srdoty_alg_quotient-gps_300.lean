import Mathlib

variable {G : Type*} [Group G]

theorem unique_subgroup_of_order_is_normal (n : ℕ) (H : Subgroup G) [Fintype H]
  (hH : Fintype.card H = n)
  (uniq : ∀ (K : Subgroup G) [Fintype K], Fintype.card K = n → K = H) :
  H.Normal := by sorry
