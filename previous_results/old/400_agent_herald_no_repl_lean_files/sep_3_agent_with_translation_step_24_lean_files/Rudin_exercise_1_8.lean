import Mathlib

/-!
Exercise (Rudin, Ex. 1.8): Prove that no order can be defined on the complex field that turns it into an ordered field.
We state this as: there is no LinearOrderedField instance on Complex.
-/

theorem no_linear_order_on_Complex : ¬ Nonempty (LinearOrderedField Complex) := by sorry
