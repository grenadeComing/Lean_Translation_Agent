import Mathlib

/-- Exercise: If G is an abelian simple group then G ≅ Z_p for some prime p.
    We do not assume G is finite. -/
theorem abelian_simple_group_is_zp {G : Type _} [Group G] [CommGroup G]
  (h : ∀ H : Subgroup G, H = ⊥ ∨ H = ⊤) :
  ∃ p : ℕ, p.Prime ∧ Nonempty (G ≃* Multiplicative (ZMod p)) := by sorry
