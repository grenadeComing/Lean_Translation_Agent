import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- A closed subset of a compact space is compact. -/
theorem closed_subset_of_compact (s : Set X) (hs : IsClosed s) (hcomp : IsCompact (univ : Set X)) : IsCompact s := by sorry
