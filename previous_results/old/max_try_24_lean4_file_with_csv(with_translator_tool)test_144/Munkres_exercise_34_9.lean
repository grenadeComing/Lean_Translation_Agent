import Mathlib

open Set

/-- A space is metrizable if there exists a metric space structure inducing its topology. -/
def is_metrizable (α : Type*) [TopologicalSpace α] : Prop := Nonempty (MetricSpace α)

/-- Exercise: If X is compact Hausdorff and X = s ∪ t with s,t closed and the subspaces s and t
    metrizable, then X is metrizable. -/
theorem Munkres_exercise_34_9 {X : Type*} [TopologicalSpace X] {s t : Set X}
  (hcover : s ∪ t = univ) (hs_closed : IsClosed (s : Set X)) (ht_closed : IsClosed (t : Set X))
  (hcompact : CompactSpace X) (hT2 : T2Space X)
  (hs_met : is_metrizable (Subtype s)) (ht_met : is_metrizable (Subtype t)) :
  is_metrizable X := by sorry
