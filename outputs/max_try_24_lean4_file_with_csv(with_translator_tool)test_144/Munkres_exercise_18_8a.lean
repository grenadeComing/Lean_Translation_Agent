import Mathlib
open Set Filter
open OrderDual (toDual)
open scoped Topology

/-- Let $Y$ be an ordered set in the order topology. Let $f, g: X \rightarrow Y$ be continuous. Show that the set $\{x \mid f(x) \leq g(x)\}$ is closed in $X$. -/
theorem isClosed_le_ext {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [Preorder Y] [OrderClosedTopology Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) : IsClosed {x | f x ≤ g x} := by sorry
