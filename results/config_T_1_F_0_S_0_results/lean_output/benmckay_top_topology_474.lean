import Mathlib

/-- Let X and Y be compact topological spaces. Then X × Y is compact (every open cover of X × Y has a finite subcover). -/
theorem compact_space_prod {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (hX : CompactSpace X) (hY : CompactSpace Y) : CompactSpace (X × Y) := by sorry
