import Mathlib

open Set

theorem continuous.is_closed_map_of_compact_space {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) (hX : CompactSpace X) :
  ∀ s : Set X, IsClosed s → IsClosed (f '' s) := by sorry
