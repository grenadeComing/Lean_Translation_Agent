import Mathlib

/--
If G is a finite group of even order, show that there must be an element a ≠ 1 such that a = a⁻¹.
This is the Lean translation (statement only) of Herstein exercise 2.1.18.
-/

theorem exists_involution_of_even_finite_group {G : Type _} [Group G] [Fintype G]
  (h : 2 ∣ Fintype.card G) :
  ∃ a : G, a ≠ 1 ∧ a = a⁻¹ := by sorry
