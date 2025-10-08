import Mathlib

/--
If |G| = 2*p where p is an odd prime, then G is isomorphic to either Z_{2p} or the dihedral
group of order 2p (expressed as a semidirect product Z_p ⋊ Z_2).
-/
theorem group_of_order_two_mul_prime (p : ℕ) (hp : Nat.Prime p) (hodd : p ≠ 2) {G : Type*}
  [Group G] [Fintype G] (h : Fintype.card G = 2 * p) :
  Nonempty (G ≃* Multiplicative (ZMod (2 * p))) ∨
  (∃ (φ : Multiplicative (ZMod 2) →* MulAut (Multiplicative (ZMod p))),
    Nonempty (G ≃* SemidirectProduct (Multiplicative (ZMod p)) (Multiplicative (ZMod 2)) φ)) := by
  sorry
