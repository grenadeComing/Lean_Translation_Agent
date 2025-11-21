import Mathlib

/-!
Let X and Y be compact topological spaces. Prove that every open cover of X × Y has a finite subcover.
-/

theorem product_of_compact {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [CompactSpace Y] : CompactSpace (X × Y) := by sorry
