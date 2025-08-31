import Mathlib
open Set Filter Metric
open scoped Topology

/-- Let $X$ be a compact Hausdorff space that is the union of the closed subspaces $X_1$ and $X_2$. If $X_1$ and $X_2$ are metrizable, show that $X$ is metrizable. -/
theorem metrizableSpace_of_closed_union_metrizable {X : Type*} [TopologicalSpace X]
 [CompactSpace X] [T2Space X] {X₁ X₂ : Set X} (h₁ : IsClosed X₁) (h₂ : IsClosed X₂)
 [MetrizableSpace ↑X₁] [MetrizableSpace ↑X₂] : MetrizableSpace X := sorry