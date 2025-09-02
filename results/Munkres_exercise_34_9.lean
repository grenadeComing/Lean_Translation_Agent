import Mathlib

/-- Exercise: Let X be a compact Hausdorff space that is the union of the closed subspaces X1 and X2.
If X1 and X2 are metrizable, show that X is metrizable. -/
theorem Munkres_exercise_34_9 {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (X1 X2 : Set X) (h_cover : X1 ∪ X2 = (univ : Set X)) (h1_closed : IsClosed (X1))
  (h2_closed : IsClosed (X2)) (h1 : MetrizableSpace (Subtype X1)) (h2 : MetrizableSpace (Subtype X2)) :
  MetrizableSpace X := by sorry
