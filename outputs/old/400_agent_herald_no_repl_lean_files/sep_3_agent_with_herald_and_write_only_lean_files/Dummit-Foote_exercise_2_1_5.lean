import Mathlib

open Classical

-- Exercise: Show that a finite group G with |G| = n > 2 cannot have a subgroup of order n - 1.

variable {G : Type*} [Group G]

theorem no_subgroup_card_eq_card_sub_one (n : ℕ) (h_card : Fintype.card G = n) (hn : 2 < n) :
  ¬∃ (H : Subgroup G), Fintype.card H = n - 1 := by sorry
