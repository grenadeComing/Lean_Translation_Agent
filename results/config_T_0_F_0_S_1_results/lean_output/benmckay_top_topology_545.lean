import Mathlib

/-!
Let X be a Hausdorff topological space and Y any compact topological space.
Prove that the first projection X × Y → X is a closed map.
-/

theorem prod_fst_is_closed_map (X Y : Type _) [TopologicalSpace X] [T2Space X]
  [TopologicalSpace Y] [CompactSpace Y] :
  (∀ (s : Set (X × Y)), IsClosed s → IsClosed (Prod.fst '' s)) :=
by sorry