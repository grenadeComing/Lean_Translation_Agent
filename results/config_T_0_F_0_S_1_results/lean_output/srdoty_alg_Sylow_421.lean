import Mathlib

/-!
Statement (no proof):
If |G| = 2 * p where p is an odd prime, then G is isomorphic to either Z_{2p} or the dihedral group of order 2p.
-/

theorem srdoty_alg_Sylow_421 {G : Type*} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p)
  (hp_odd : p ≠ 2) (hcard : Fintype.card G = 2 * p) :
  (Nonempty (G ≃* Additive (ZMod (2 * p)))) ∨ (Nonempty (G ≃* Dihedral p)) := by sorry
