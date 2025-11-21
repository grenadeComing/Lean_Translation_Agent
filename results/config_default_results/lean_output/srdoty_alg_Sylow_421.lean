import Mathlib

/-- Let G be a group with |G| = 2 * p where p is an odd prime. Then G is isomorphic to either the cyclic group of order 2*p or the dihedral group of order 2*p. -/
theorem is_cyclic_or_dihedral_of_order_two_mul_prime {G : Type*} [Group G] [Fintype G]
  (p : ℕ) (hp : Nat.Prime p) (hG : Fintype.card G = 2 * p) :
  Nonempty (G ≃* Multiplicative (ZMod (2 * p))) ∨ Nonempty (G ≃* DihedralGroup p) := by sorry