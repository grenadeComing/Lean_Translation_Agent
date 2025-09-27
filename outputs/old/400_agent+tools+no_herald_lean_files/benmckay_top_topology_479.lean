import Mathlib

universe u v

/--
Every product of topological spaces is compact iff every product of compact topological spaces is compact.
We state this using `CompactSpace` for whole spaces.
-/
theorem prod_compact_iff_prod_of_compact_compact :
  (∀ {ι : Type u} {X : ι → Type v} [∀ i, TopologicalSpace (X i)], CompactSpace (∀ i, X i)) ↔
  (∀ {ι : Type u} {X : ι → Type v} [∀ i, TopologicalSpace (X i)], (∀ i, CompactSpace (X i)) → CompactSpace (∀ i, X i)) :=
by
  sorry
