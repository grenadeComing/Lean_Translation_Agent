import Mathlib

theorem prod_fst_is_closed_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space X] [CompactSpace Y] :
  ∀ {s : Set (X × Y)}, IsClosed s → IsClosed (Prod.fst '' s) := by sorry
