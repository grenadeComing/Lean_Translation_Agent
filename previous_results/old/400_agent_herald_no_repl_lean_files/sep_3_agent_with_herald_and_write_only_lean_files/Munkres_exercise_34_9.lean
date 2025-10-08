import Mathlib

/-!
Munkres exercise 34.9: Let X be a compact Hausdorff space that is the union of the closed
subspaces X1 and X2. If X1 and X2 are metrizable, then X is metrizable.
-/

theorem Munkres_exercise_34_9
  {X : Type _} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  (X1 X2 : Set X)
  (hX1 : IsClosed (X1 : Set X)) (hX2 : IsClosed (X2 : Set X))
  (hcover : X1 ∪ X2 = (Set.univ : Set X))
  (hmet1 : MetrizableSpace (Subtype X1)) (hmet2 : MetrizableSpace (Subtype X2)) :
  MetrizableSpace X := by sorry
