import Mathlib

/-- Any infinite cyclic group is isomorphic to the additive group ℤ of integers. Any finite cyclic group is isomorphic to the additive group ℤ_n of integers modulo n, for some positive integer n.

We state this for multiplicative groups: a cyclic (multiplicative) group is either isomorphic to `Multiplicative Int` (the multiplicative copy of the additive integers) or to `Multiplicative (ZMod n)` for some n > 0. -/
theorem equiv_int_or_zmod_of_cyclic {G : Type*} [Group G] (h : IsCyclic G) :
  Nonempty (G ≃* Multiplicative Int) ∨ ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃* Multiplicative (ZMod n)) := by sorry