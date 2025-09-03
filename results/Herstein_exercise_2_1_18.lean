import Mathlib


/-- If G is a finite group of even order, show that there must be an element a ≠ e such that a = a^{-1}. -/
theorem exists_eq_inv_of_ne_identity_and_order_even (G : Type*) [Group G] [Fintype G]
 (hG : Even (Fintype.card G)) : ∃ a : G, a ≠ 1 ∧ a = a⁻¹ := by sorry