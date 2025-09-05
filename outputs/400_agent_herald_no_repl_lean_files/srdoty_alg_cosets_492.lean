import Mathlib

variable {G : Type _} [Group G]

/-- Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
If gcd(m, n) = 1 then H ⊓ K = ⊥ (the trivial subgroup).
-/
theorem subgroup_inter_eq_bot_of_coprime_card {H K : Subgroup G} (m n : Nat)
  [Fintype H] [Fintype K]
  (hm : Fintype.card H = m) (hn : Fintype.card K = n)
  (hc : Nat.gcd m n = 1) : (H ⊓ K : Subgroup G) = (⊥ : Subgroup G) := by sorry
