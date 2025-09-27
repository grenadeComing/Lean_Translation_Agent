import Mathlib

/- Exercise: Let p : X → Y be a quotient map. Show that if each set p^{-1}({y}) is connected, and if Y is connected, then X is connected. -/

theorem Munkres_exercise_23_11 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y)
  (hp_surj : Function.Surjective p)
  (hp_quot : ∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U))
  (h_fiber : ∀ y : Y, IsConnected (p ⁻¹' ({y} : Set Y)))
  (hY : ConnectedSpace Y) : ConnectedSpace X := by sorry
