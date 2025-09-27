import Mathlib

/--
If |G| = 462 then G is not simple: there exists a nontrivial proper normal subgroup.
-/
theorem Dummit_Foote_exercise_4_5_23 {G : Type*} [Group G] [Fintype G] (h : Fintype.card G = 462) :
  ∃ H : Subgroup G, IsNormal H ∧ H ≠ ⊥ ∧ H ≠ ⊤ := by sorry
