import Mathlib

/-
Munkres, Exercise 38.6:
Let X be completely regular. Show that X is connected iff the Stone-Čech compactification of X is connected.
-/

theorem Munkres_exercise_38_6 {X : Type _} [TopologicalSpace X] [CompletelyRegularSpace X] :
  ConnectedSpace X ↔ ConnectedSpace (StoneCech X) := by
  sorry
