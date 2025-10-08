import Mathlib

/-- Any infinite cyclic group is isomorphic (as a multiplicative group) to the multiplicative
    incarnation of the additive group ℤ. -/
theorem infinite_cyclic_group_isomorphic_Z {G : Type _} [Group G] [IsCyclic G] (h : Infinite G) :
  Nonempty (MulEquiv G (Multiplicative ℤ)) := by sorry

/-- Any finite cyclic group is isomorphic (as a multiplicative group) to the multiplicative
    incarnation of the additive group ZMod n, for some positive integer n. -/
theorem finite_cyclic_group_isomorphic_Zn {G : Type _} [Group G] [IsCyclic G] [Fintype G] :
  ∃ n : ℕ, 0 < n ∧ Nonempty (MulEquiv G (Multiplicative (ZMod n))) := by sorry
