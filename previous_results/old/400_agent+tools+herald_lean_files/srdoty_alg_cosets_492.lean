import Mathlib

/--
Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
If gcd(m, n) = 1 then H ∩ K = {1}.
-/
theorem inter_is_trivial_of_coprime {G : Type _} [Group G] {H K : Subgroup G} {m n : ℕ}
  (hH : Fintype H) (hK : Fintype K) (hcardH : Fintype.card H = m) (hcardK : Fintype.card K = n)
  (hmn : Nat.Coprime m n) : (H ⊓ K) = ⊥ := by sorry
