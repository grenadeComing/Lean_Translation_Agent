import Mathlib

/-!
Let X and Y be compact topological spaces. Prove that every open cover of X × Y has a finite subcover.
This is expressed by showing the product is a compact space.
-/

theorem compact_space_prod {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace X → CompactSpace Y → CompactSpace (X × Y) := by sorry
