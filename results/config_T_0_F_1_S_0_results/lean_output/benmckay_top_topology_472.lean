import Mathlib

/-!
# Product of compact spaces is compact iff factors are compact

Statement: For topological spaces X and Y, the product X × Y is compact iff X and Y are both compact.
-/

theorem prod_compact_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  IsCompact (Set.univ : Set (X × Y)) ↔ IsCompact (Set.univ : Set X) ∧ IsCompact (Set.univ : Set Y) := by sorry
