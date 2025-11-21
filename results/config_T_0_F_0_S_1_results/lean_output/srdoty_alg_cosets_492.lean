import Mathlib

/-!
Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
If gcd(m, n) = 1, then H ⊓ K = ⊥ (equivalently H ∩ K = {1}).
-/

theorem subgroups_inter_trivial_of_coprime_card {G : Type*} [Group G] {H K : Subgroup G}
  (m n : ℕ) [Fintype H] [Fintype K]
  (hH : Fintype.card H = m) (hK : Fintype.card K = n)
  (hgcd : Nat.gcd m n = 1) : H ⊓ K = (⊥ : Subgroup G) := by sorry
