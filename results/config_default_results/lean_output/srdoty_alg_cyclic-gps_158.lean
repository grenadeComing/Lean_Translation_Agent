import Mathlib

/-- Infinite cyclic group is isomorphic to the additive group of integers. -/
theorem infinite_cyclic_iso_int (G : Type*) [Group G] [IsCyclic G] [Infinite G] : G ≃ ℤ := by
  -- proof omitted
  sorry

/-- Finite cyclic group is isomorphic to the additive group of integers modulo n for some n > 0. -/
theorem finite_cyclic_iso_zmod (G : Type*) [Group G] [IsCyclic G] [Fintype G] : ∃ n : ℕ, 0 < n ∧ G ≃ ZMod n := by
  -- proof omitted
  sorry
