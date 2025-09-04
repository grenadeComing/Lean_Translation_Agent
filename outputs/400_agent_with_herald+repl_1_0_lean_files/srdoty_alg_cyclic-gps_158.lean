import Mathlib

/-- Any infinite cyclic group (multiplicative) is isomorphic to Additive Int. -/
theorem infinite_cyclic_group_mul_isomorphic_to_additive_Int (G : Type _) [Group G] [IsCyclic G] (hinf : IsInfinite G) :
  MulEquiv G (Additive Int) := by sorry

/-- Any finite cyclic group (multiplicative) is isomorphic to Multiplicative (ZMod n) for some n > 0. -/
theorem finite_cyclic_group_mul_isomorphic_to_multiplicative_ZMod (G : Type _) [Group G] [IsCyclic G] [Fintype G] :
  ∃ n : ℕ, 0 < n ∧ MulEquiv G (Multiplicative (ZMod n)) := by sorry
