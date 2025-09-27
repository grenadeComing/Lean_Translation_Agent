import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

/-- Let f and g be continuous maps X → Y. The set A of points where f = g is closed when Y is Hausdorff. -/
theorem eq_set_closed_of_t2 {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  IsClosed ({ x : X | f x = g x }) := by sorry
