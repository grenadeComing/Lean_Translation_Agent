import Mathlib

/-!
Show that if |G| = 2*p where p is an odd prime, then G is isomorphic to either Z_{2p} or D_p.
We state this as: for a group G of order 2*p (p an odd prime), either G is cyclic of order 2*p
(i.e. isomorphic to Multiplicative (ZMod (2*p))) or G is isomorphic to the dihedral group DihedralGroup p.
-/

theorem group_card_two_mul_prime {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : p.Prime) (hodd : p ≠ 2) (hcard : Fintype.card G = 2 * p) :
  (Nonempty (G ≃* Multiplicative (ZMod (2 * p)))) ∨ (Nonempty (G ≃* DihedralGroup p)) := by sorry
