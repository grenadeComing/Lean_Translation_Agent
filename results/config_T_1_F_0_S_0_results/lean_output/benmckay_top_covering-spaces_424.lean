import Mathlib

/-- Let f : X → Y be a covering map between topological spaces, and assume X is Hausdorff.
For any basepoint x0 : X, the induced map on fundamental groups
f_* : FundamentalGroup X x0 → FundamentalGroup Y (f x0)
is injective. -/
theorem is_covering_map_induced_pi1_injective {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : IsCoveringMap f) [T2Space X] (x0 : X) :
  Function.Injective (FundamentalGroup.map f : FundamentalGroup X x0 → FundamentalGroup Y (f x0)) := by sorry