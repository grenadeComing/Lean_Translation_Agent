import Mathlib

/-!
Any infinite cyclic group is isomorphic to the additive group ℤ of integers.
Any finite cyclic group is isomorphic to the additive group ℤ_n of integers modulo n,
for some positive integer n.
-/

open Multiplicative

theorem infinite_cyclic_add_group_iso_Int {G : Type*} [Add G] [Pow (Multiplicative G) ℤ]
  (h : IsCyclic (Multiplicative G)) (hn : ¬ Nonempty (Fintype G)) :
  Nonempty (AddEquiv G Int) := by sorry

theorem finite_cyclic_add_group_iso_zmod {G : Type*} [Add G] [Pow (Multiplicative G) ℤ]
  [Fintype G] (h : IsCyclic (Multiplicative G)) :
  ∃ n : ℕ, 0 < n ∧ Nonempty (AddEquiv G (ZMod n)) := by sorry
