import Mathlib

open Nat

/-- If |G| = 2 * p where p is an odd prime, then G is isomorphic to either the
cyclic group of order 2p or the dihedral group of order 2p. -/
theorem group_of_order_two_mul_prime {G : Type*} [Group G] [Fintype G] (p : ℕ) [Fact (Nat.Prime p)]
  (hp : p ≠ 2) (hcard : Fintype.card G = 2 * p) :
  (G ≃* Additive (ZMod (2 * p))) ∨ (G ≃* DihedralGroup p) := by sorry
