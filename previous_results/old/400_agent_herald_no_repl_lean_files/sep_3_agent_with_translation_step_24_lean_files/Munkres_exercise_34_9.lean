import Mathlib

open Set

/-- Let X be a compact Hausdorff space that is the union of the closed subspaces X1 and X2.
    If X1 and X2 are metrizable, then X is metrizable. -/
theorem Munkres_exercise_34_9 {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  {X1 X2 : Set X} (hcover : X1 ∪ X2 = (Set.univ : Set X)) (hcl1 : IsClosed (X1 : Set X)) (hcl2 : IsClosed (X2 : Set X))
  (m1 : Nonempty (MetricSpace (Subtype X1))) (m2 : Nonempty (MetricSpace (Subtype X2))) :
  Nonempty (MetricSpace X) := by sorry
