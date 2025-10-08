import Mathlib

/-!
Any infinite cyclic group is isomorphic to the additive group ℤ of integers.
Any finite cyclic group is isomorphic to the additive group ℤ_n of integers modulo n,
for some positive integer n.
We state both facts for additive groups: if A is an additive cyclic group then
- if A is infinite then A ≃+ Int,
- if A is finite then A ≃+ ZMod n for some n > 0.
-/

theorem infinite_cyclic_add_group_equiv_Z {A : Type _} [AddGroup A]
  (h : IsCyclic (Multiplicative A)) (hn : ¬Finite A) :
  Nonempty (A ≃+ Int) := by sorry

theorem finite_cyclic_add_group_equiv_ZMod {A : Type _} [AddGroup A]
  (h : IsCyclic (Multiplicative A)) [Finite A] :
  ∃ n : ℕ, 0 < n ∧ Nonempty (A ≃+ ZMod n) := by sorry
