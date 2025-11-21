import Mathlib

/-!
Any infinite cyclic group is isomorphic to the additive group ℤ of integers.
Any finite cyclic group is isomorphic to the additive group ℤ_n of integers modulo n,
for some positive integer n.
-/

theorem infinite_add_cyclic_group_isomorphic_to_Z {G : Type*} [AddGroup G]
  (h : IsAddCyclic G) (hinf : ¬ Fintype G) : Nonempty (G ≃+ Int) := by sorry

theorem finite_add_cyclic_group_isomorphic_to_ZMod {G : Type*} [AddGroup G]
  (h : IsAddCyclic G) [Fintype G] : ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃+ ZMod n) := by sorry