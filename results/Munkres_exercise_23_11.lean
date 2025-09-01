import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let p : X → Y be a quotient map. Show that if each set p^{-1}({y}) is connected,
    and if Y is connected, then X is connected. -/
theorem Munkres_exercise_23_11 (p : X → Y)
  (hp_quot : ∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U))
  (h_fiber : ∀ y : Y, IsConnected (p ⁻¹' ({y} : Set Y)))
  (hY : ConnectedSpace Y) :
  ConnectedSpace X := by sorry
