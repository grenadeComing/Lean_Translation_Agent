import Mathlib

theorem abelian_simple_group_is_cyclic_prime (G : Type*) [Group G] [CommGroup G] [IsSimpleGroup G] :
  ∃ p : ℕ, p.Prime ∧ Nonempty (G ≃* Multiplicative (ZMod p)) := by
  sorry
