import Mathlib

/-!
Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
If gcd(m, n) = 1, then H ∩ K = {1}.
-/

theorem srdoty_alg_cosets_492 {G : Type*} [Group G] {H K : Subgroup G} [Fintype H] [Fintype K]
  {m n : Nat} (hm : Fintype.card H = m) (hn : Fintype.card K = n) (gcd1 : Nat.gcd m n = 1) :
  ((H : Set G) ∩ (K : Set G) = ({1} : Set G)) := by sorry
