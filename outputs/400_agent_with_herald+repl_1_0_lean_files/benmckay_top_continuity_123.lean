import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- The set where two continuous maps agree is closed when the target is Hausdorff. -/
theorem eq_on_set_closed (f g : X → Y) [T2Space Y] (hf : Continuous f) (hg : Continuous g) :
  IsClosed ({ x : X | f x = g x }) := by sorry
