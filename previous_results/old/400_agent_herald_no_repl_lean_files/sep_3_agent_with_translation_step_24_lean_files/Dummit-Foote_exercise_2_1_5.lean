import Mathlib

/-- Exercise: Let G be a finite group with |G| = n > 2. Then G has no subgroup H with |H| = n - 1. -/
theorem Dummit_Foote_exercise_2_1_5 {G : Type*} [Group G] [Fintype G] [DecidableEq G]
  (h : Fintype.card G > 2) :
  ¬ ∃ (H : Finset G), H.card = Fintype.card G - 1 ∧ (1 : G) ∈ H ∧
    (∀ a b, a ∈ H → b ∈ H → a * b ∈ H) ∧ (∀ a, a ∈ H → a⁻¹ ∈ H) := by
  sorry
