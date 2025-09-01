import Mathlib

/-- Let p : X → Y be a quotient map. Show that if each fiber {x : X // p x = y} is connected, and if Y is connected, then X is connected. -/
theorem Munkres_exercise_23_11 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (p : X → Y)
  (hp : ∀ (U : Set Y), IsOpen U ↔ IsOpen (p ⁻¹' U))
  (h : ∀ (y : Y), ConnectedSpace ({ x : X // p x = y }))
  (hY : ConnectedSpace Y) : ConnectedSpace X := by sorry
