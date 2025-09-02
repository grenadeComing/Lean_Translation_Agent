import Mathlib

/-- Let p : X → Y be a closed continuous surjective map such that p^{-1}({y}) is compact for each y ∈ Y.
    Show that if Y is compact, then X is compact. (Perfect map preserves compactness of the target.) -/
theorem perfect_map.compact_space_of_compact_target {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hp_closed : IsClosedMap p) (hp_cont : Continuous p) (hp_surj : Function.Surjective p)
  (hfib : ∀ y : Y, IsCompact (p ⁻¹' ({y} : Set Y))) [CompactSpace Y] : CompactSpace X := by
  sorry
