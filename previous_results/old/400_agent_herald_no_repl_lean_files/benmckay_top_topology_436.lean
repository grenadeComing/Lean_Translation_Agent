import Mathlib

open Set

/-- A closed subset of a compact space is compact. -/
lemma closed_subset_of_compact_space_is_compact {X : Type _} [TopologicalSpace X] {s : Set X}
  (h : IsCompact (univ : Set X)) (hs : IsClosed s) : IsCompact s := by sorry
