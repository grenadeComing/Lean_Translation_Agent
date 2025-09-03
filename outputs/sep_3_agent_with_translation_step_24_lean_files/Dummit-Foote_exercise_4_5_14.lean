import Mathlib

universe u

/-- A group of order 312 has a normal Sylow p-subgroup for some prime p dividing its order.
    In fact, since 312 = 2^3 * 3 * 13, there is a normal subgroup of order 13. -/
theorem Dummit_Foote_exercise_4_5_14 {G : Type u} [Group G] [Finite G]
  (h : Nat.card G = 312) :
  ∃ P : Subgroup G, Nat.card (↑P) = 13 ∧ (∀ g k : G, k ∈ P → g * k * g⁻¹ ∈ P) := by sorry
