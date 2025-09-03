import Mathlib

/-- If Y is an ordered set equipped with the order topology, then the pointwise minimum
of two continuous functions f and g : X → Y is continuous. -/
theorem continuous_min {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [LinearOrder Y]
  [OrderTopology Y] {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  Continuous fun x => min (f x) (g x) := by sorry
