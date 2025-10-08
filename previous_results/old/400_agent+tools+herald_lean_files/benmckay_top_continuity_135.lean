import Mathlib
open Set Filter
open scoped Topology

/-- Let X and Y be topological spaces, and assume Y is Hausdorff (T2).
If continuous maps f,g : X → Y agree on a dense subset D of X, then f = g. -/
theorem ext_of_dense {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {f g : X → Y} (h : Dense {x | f x = g x}) : f = g := by sorry
