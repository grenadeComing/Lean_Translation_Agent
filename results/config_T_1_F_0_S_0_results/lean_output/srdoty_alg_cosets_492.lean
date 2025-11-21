import Mathlib

/-- Let H and K be finite subgroups of a group G with |H| = m and |K| = n.
    If gcd(m, n) = 1 then H ∩ K = {1}.
    (Statement only; no proof.) -/
theorem subgroup_inter_eq_singleton_one_of_coprime_cardinals {G : Type*} [Group G]
  {H K : Subgroup G} [Fintype (↥H)] [Fintype (↥K)] (m n : ℕ)
  (hcard : Fintype.card (↥H) = m) (kcard : Fintype.card (↥K) = n)
  (hmn : Nat.gcd m n = 1) :
  (H ⊓ K : Set G) = ({1} : Set G) := by sorry