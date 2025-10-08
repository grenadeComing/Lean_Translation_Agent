import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- A map p : X → Y is a quotient map if it is surjective and U is open in Y iff p⁻¹' U is open in X. -/
def is_quotient_map (p : X → Y) : Prop :=
  Function.Surjective p ∧ (∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U))

/-- Munkres Exercise 23.11: If p : X → Y is a quotient map, each fibre p⁻¹ {y} is connected, and Y is connected, then X is connected. -/
theorem munkres_exercise_23_11 (p : X → Y) (hq : is_quotient_map p)
  (hfib : ∀ y : Y, IsConnected (p ⁻¹' {y})) (hY : ConnectedSpace Y) :
  ConnectedSpace X := by sorry
