import Mathlib

/-- Let X be a compact Hausdorff space that is the union of the closed subspaces
    s and t. If s and t are metrizable, then X is metrizable. -/
theorem munkres_exercise_34_9 {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (s t : Set X) (hs : IsClosed s) (ht : IsClosed t) (hcover : s ∪ t = univ)
  (hms : MetrizableSpace (Subtype s)) (hmt : MetrizableSpace (Subtype t)) : MetrizableSpace X := by sorry
