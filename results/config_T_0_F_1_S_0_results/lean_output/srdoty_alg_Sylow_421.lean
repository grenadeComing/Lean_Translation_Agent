import Mathlib

/-!
Statement: If |G| = 2p where p is an odd prime, then G is isomorphic to either Z_{2p} or D_p.
This file contains only the statement (no proof).
-/

theorem srdoty_alg_Sylow_421 {G : Type _} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (hp2 : p ≠ 2) (hcard : Fintype.card G = 2 * p) :
  Nonempty (G ≃* Multiplicative (ZMod (2 * p))) ∨ Nonempty (G ≃* DihedralGroup p) := by sorry
