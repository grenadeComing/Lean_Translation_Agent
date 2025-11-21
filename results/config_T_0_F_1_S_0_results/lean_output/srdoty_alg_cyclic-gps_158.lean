import Mathlib

/-!
Any infinite cyclic group is isomorphic to the additive group ℤ of integers.
Any finite cyclic group is isomorphic to the additive group ℤ_n of integers modulo n, for some positive integer n.
-/

theorem infinite_cyclic_group_isomorphic_to_int {G : Type*} [Add G] [SMul ℤ G] (h : IsAddCyclic G)
  (hinf : Infinite G) : Nonempty (G ≃+ Int) := by sorry

theorem finite_cyclic_group_isomorphic_to_zmod {G : Type*} [Add G] [SMul ℤ G] [Fintype G]
  (h : IsAddCyclic G) : ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃+ ZMod n) := by sorry