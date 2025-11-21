import Mathlib

/-- Let p be a prime. For any finite abelian p-group G (additive), every minimal nontrivial
    subgroup H of G is isomorphic (as an additive group) to ZMod p. This implies that
    composition factors (which are minimal nontrivial quotients) are all isomorphic to ZMod p. -/
theorem finite_abelian_pgroup_minimal_subgroup_is_ZMod_p {p n : ℕ} (hp : p.Prime)
  {G : Type*} [AddCommGroup G] [Fintype G] (hcard : Fintype.card G = p ^ n) :
  ∀ (H : AddSubgroup G), H ≠ (0 : AddSubgroup G) →
    (∀ (K : AddSubgroup G), K ≤ H → (K = (0 : AddSubgroup G) ∨ K = H)) →
    ∃ (e : AddEquiv (↥H) (ZMod p)), True := by sorry
