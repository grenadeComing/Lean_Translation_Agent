import Mathlib

/-
If X is compact and f : X → Y is continuous, then f is a closed map.

Note: As stated without further hypotheses on Y this is false in general.
One needs Y to be T2 (Hausdorff) for compact sets to be closed. Here we
translate the statement as given; the proof is omitted (sorry).
-/

theorem compact_space.continuous_is_closed_map {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] [CompactSpace X] (f : X → Y) (hf : Continuous f) : IsClosedMap f := by
  sorry
