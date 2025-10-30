import Mathlib


/-- Let H and K be finite subgroups of a group G with |H|=m and |K|=n. Prove that if gcd(m,n)=1, then H ∩ K = {1}. Save it to: srdoty_alg_cosets_492.lean -/
theorem subgroup_inf_eq_bot_of_coprime_card {G : Type*} [Group G] {H K : Subgroup G}
    (hH : H.index.Coprime K.index) : H ⊓ K = ⊥ := by sorry