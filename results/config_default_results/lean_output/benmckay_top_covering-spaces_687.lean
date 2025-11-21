import Mathlib

/-- The fibre of a map p over a point y. -/
def fibre {X Y : Type*} (p : X → Y) (y : Y) := { x : X // p x = y }

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- For every covering space p : X → Y of a path connected and locally simply connected
topological space Y, and every basepoint y0 : Y, the fundamental group π1(Y,y0)
acts continuously on the fibre p^{-1}(y0).

This statement records the existence of a continuous action (as a function
smul : π1 → fibre p y0 → fibre p y0); the usual definition of the action is
by lifting loops and taking endpoints (equivalently by concatenation of paths).
-/
theorem benmckay_top_covering_spaces_687
  (p : X → Y) (y0 : Y)
  (is_covering : Prop) (hcover : is_covering)
  (path_connected : Prop) (hpath : path_connected)
  (locally_simply_connected : Prop) (hloc : locally_simply_connected)
  (π1 : Type*) [Group π1] [TopologicalSpace π1]
  [TopologicalSpace (fibre p y0)] :
  ∃ (smul : π1 → fibre p y0 → fibre p y0),
    Continuous (fun pr : π1 × fibre p y0 => smul pr.1 pr.2) := by sorry
