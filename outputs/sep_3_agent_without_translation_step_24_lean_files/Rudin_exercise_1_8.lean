import Mathlib

/-!
Exercise (Rudin 1.8).
Prove that no order can be defined in the complex field that turns it into an ordered field.
This file states the corresponding theorem in Lean4/Mathlib style.
-/

theorem not_linear_ordered_field_on_Complex : ¬ Nonempty (LinearOrderedField Complex) := by sorry
