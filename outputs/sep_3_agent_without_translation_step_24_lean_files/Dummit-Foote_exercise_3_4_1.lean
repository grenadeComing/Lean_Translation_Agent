import Mathlib

/--
If G is an abelian simple group then G ≅ Z_p for some prime p.
We do not assume G is finite in the statement, but simplicity forces it to be of prime order.
-/
theorem abelian_simple_group_is_ZMod_prime (G : Type*) [Group G] [CommGroup G]
  (h : IsSimpleGroup G) :
  ∃ (p : ℕ), Nat.Prime p ∧ Nonempty (G ≃* Multiplicative (ZMod p)) := by
  -- proof omitted
  sorry
