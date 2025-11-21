import Mathlib

variable {G : Type _} [Group G]

theorem intersection_of_coprime_order_eq_trivial {H K : Subgroup G} [Fintype H] [Fintype K]
  {m n : Nat} (hm : Fintype.card H = m) (hn : Fintype.card K = n) (hd : Nat.gcd m n = 1) :
  (H ⊓ K : Subgroup G) = (⊥ : Subgroup G) := by sorry
