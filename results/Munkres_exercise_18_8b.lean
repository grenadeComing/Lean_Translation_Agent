import Mathlib

variable {X : Type*} {Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [LinearOrder Y] [OrderClosedTopology Y]

theorem Munkres_exercise_18_8b {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  Continuous fun x => min (f x) (g x) := by sorry
