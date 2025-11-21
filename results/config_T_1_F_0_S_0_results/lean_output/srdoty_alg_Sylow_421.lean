import Mathlib

lemma group_of_order_two_mul_prime_is_cyclic_or_dihedral {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (hp2 : p ≠ 2) (hG : Fintype.card G = 2 * p) :
  (Nonempty (G ≃* Multiplicative (ZMod (2 * p)))) ∨
  ∃ (r s : G),
    orderOf r = p ∧ orderOf s = 2 ∧ s * r * s = r⁻¹ ∧ Subgroup.closure ({r, s} : Set G) = (⊤ : Subgroup G) := by sorry