import Mathlib

/-- Dummit & Foote exercise 7.1.2:
If a is a unit in a ring-like structure with negation, then -a is also a unit. -/
theorem dummit_foote_exercise_7_1_2 {α : Type u} [Monoid α] [HasDistribNeg α] {a : α} :
  IsUnit a → IsUnit (-a) := by sorry
