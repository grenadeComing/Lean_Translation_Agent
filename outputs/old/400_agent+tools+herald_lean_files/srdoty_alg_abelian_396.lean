import Mathlib

/-- Let p be a prime. If G is a finite abelian p-group, then any maximal proper subgroup H has index p.
    In particular, composition factors (quotients by maximal normal subgroups) have order p, hence are
    isomorphic to ZMod p. -/
theorem composition_factors_of_finite_abelian_p_group {p : ℕ} (hp : p.Prime)
  {G : Type*} [Group G] [CommGroup G] [Finite G] (hpg : IsPGroup p G) :
  ∀ H : Subgroup G, H ≠ (⊤ : Subgroup G) →
    (∀ K : Subgroup G, H ≤ K → (K = H ∨ K = (⊤ : Subgroup G))) →
    Subgroup.index H = p := by sorry
