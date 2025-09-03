import Mathlib

/--
Let p : X → Y be a quotient map. Show that if each set p^{-1}({y}) is connected,
and if Y is connected, then X is connected.
-/
theorem Munkres_exercise_23_11 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hq : QuotientMap p) (hfib : ∀ y, IsConnected (p ⁻¹' ({y} : Set Y)))
  (hY : ConnectedSpace Y) : ConnectedSpace X := by sorry
