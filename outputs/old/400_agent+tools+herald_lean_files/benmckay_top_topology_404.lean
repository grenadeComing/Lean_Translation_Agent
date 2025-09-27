import Mathlib

/--
Suppose f : X → Y is a continuous bijection from a compact topological space X
to a Hausdorff space Y. Then the inverse f^{-1} : Y → X is continuous.
-/
theorem continuous_inverse_of_continuous_bijective_compact_to_T2 {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X] [T2Space Y] [Nonempty X]
  {f : X → Y} (hf : Continuous f) (hbij : Function.Bijective f) :
  Continuous (Function.invFun f) := by sorry
