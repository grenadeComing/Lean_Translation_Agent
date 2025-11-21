import Mathlib

/-- Any infinite cyclic (multiplicative) group is isomorphic to the multiplicative
version of the additive group ℤ. -/
theorem cyclic_group_isomorphic_to_int_of_infinite {G : Type _} [Group G] [IsCyclic G] [Infinite G] :
  Nonempty (G ≃* Multiplicative Int) := by sorry

/-- Any finite cyclic (multiplicative) group is isomorphic to the multiplicative
version of `ZMod n` for some positive integer `n`. -/
theorem finite_cyclic_group_isomorphic_to_zmod {G : Type _} [Group G] [IsCyclic G] [Fintype G] :
  ∃ n : ℕ, 0 < n ∧ Nonempty (G ≃* Multiplicative (ZMod n)) := by sorry