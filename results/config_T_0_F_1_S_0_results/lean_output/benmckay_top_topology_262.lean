import Mathlib

variables {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- The continuous maps on X embed into continuous maps on X × Y via precomposition with
`ContinuousMap.fst`. The image consists exactly of those continuous maps which are constant on
each slice {x} × Y (i.e. which do not depend on the Y-coordinate). -/
theorem continuous_map_comp_fst_range :
  Set.range (fun f : ContinuousMap X Z => f.comp ContinuousMap.fst) =
    { g : ContinuousMap (X × Y) Z | ∀ x y1 y2, g (x, y1) = g (x, y2) } := by sorry
