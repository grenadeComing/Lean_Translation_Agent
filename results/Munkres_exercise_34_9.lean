import Mathlib

open Set

theorem Munkres_exercise_34_9 {X : Type _} [TopologicalSpace X] [T2Space X] [CompactSpace X]
  {X1 X2 : Set X} (hX1_closed : IsClosed (X1 : Set X)) (hX2_closed : IsClosed X2)
  (hcover : X1 ∪ X2 = (univ : Set X))
  [MetricSpace (Subtype X1)] [MetricSpace (Subtype X2)] :
  Nonempty (MetricSpace X) := by sorry
