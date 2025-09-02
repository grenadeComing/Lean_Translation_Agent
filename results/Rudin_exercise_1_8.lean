import Mathlib

/-!
No order on the complex field makes it into an ordered field.
This states that there is no instance of `LinearOrderedField` on `ℂ`.
-/

theorem Rudin_exercise_1_8 : ¬ Nonempty (LinearOrderedField ℂ) := by sorry
