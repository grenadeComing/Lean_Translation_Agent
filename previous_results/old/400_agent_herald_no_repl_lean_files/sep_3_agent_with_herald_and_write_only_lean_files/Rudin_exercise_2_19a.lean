import Mathlib
open Set Filter Topology

/-- If $A$ and $B$ are disjoint closed sets in some metric space $X$, prove that they are separated. -/
theorem separated_of_disjoint_closed {X : Type*} [MetricSpace X] {A B : Set X} (hA : IsClosed A) (hB : IsClosed B) (h : Disjoint A B) : Separated A B := by sorry
