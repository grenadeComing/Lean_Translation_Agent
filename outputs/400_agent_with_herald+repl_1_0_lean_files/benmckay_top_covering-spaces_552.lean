import Mathlib.Topology.CoveringSpace

variable {X Y Z : Type _}
variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

variable (p : X → Y) (q : Y → Z)

/-- If p : X → Y and q : Y → Z are covering maps, then the composition q ∘ p : X → Z is also a covering map. -/
theorem covering_comp (hp : CoveringSpace.IsCovering p) (hq : CoveringSpace.IsCovering q) :
  CoveringSpace.IsCovering (q ∘ p) := by
  sorry
