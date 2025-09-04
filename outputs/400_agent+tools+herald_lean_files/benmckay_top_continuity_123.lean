import Mathlib

/-- Let f, g : X → Y be continuous maps. Let A = {x | f x = g x}.
    If Y is Hausdorff (T2), then A is closed. -/
theorem is_closed_eq_of_continuous {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) (hY : T2Space Y) :
  IsClosed ({x : X | f x = g x}) := by sorry
