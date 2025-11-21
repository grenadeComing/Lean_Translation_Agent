import Mathlib

theorem subgroups_coprime_inter_trivial {G : Type*} [Group G] (H K : Subgroup G)
  [Fintype H] [Fintype K] (m n : Nat) (hH : Fintype.card H = m) (hK : Fintype.card K = n)
  (hg : Nat.gcd m n = 1) : (H ⊓ K : Subgroup G) = (⊥ : Subgroup G) := by sorry
