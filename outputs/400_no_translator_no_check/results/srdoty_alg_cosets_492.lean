import Mathlib

/-!
Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
Prove that if gcd(m,n) = 1, then H ∩ K = {1}.
-/

theorem subgroup_inter_eq_bot_of_coprime_card {G : Type _} [Group G]
  (H K : Subgroup G) [Fintype H] [Fintype K] {m n : Nat}
  (hm : Fintype.card H = m) (hn : Fintype.card K = n) (hgcd : Nat.gcd m n = 1) :
  (H ⊓ K) = ⊥ := by sorry
