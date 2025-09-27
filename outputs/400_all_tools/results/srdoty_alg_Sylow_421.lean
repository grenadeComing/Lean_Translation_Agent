import Mathlib
open Cardinal

/-- Show that if |G| = 2*p where p is an odd prime, then G is isomorphic to either Z_{2p} or D_p. -/

theorem is_zmod_or_dihedral (G : Type*) [Group G] [Fintype G] (p : ℕ) (hp : Nat.Prime p) (hp' : p ≠ 2)
    (hG : Fintype.card G = 2 * p) : (Nonempty (G ≃* ZMod (2 * p))) ∨ Nonempty (G ≃* DihedralGroup p) := by sorry
