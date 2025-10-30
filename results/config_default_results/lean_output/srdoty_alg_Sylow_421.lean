import Mathlib

/-- Show that if |G| = 2p where p is an odd prime, then G is isomorphic to either Z_{2p} or D_{p}. -/
theorem sylow_421
  (G : Type u) [Group G] [Fintype G]
  (p : ℕ) [Fact p.Prime] (hp : p ≠ 2)
  (hG : Fintype.card G = 2 * p) :
  Nonempty (G ≃* DihedralGroup p) ∨ IsCyclic G := by
  sorry
