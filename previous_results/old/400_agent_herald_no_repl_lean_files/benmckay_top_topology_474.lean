import Mathlib

open Set

/-- If X and Y are compact topological spaces, then every open cover of X × Y
has a finite subcover. -/
theorem compact_space_prod_open_cover_finite {X Y ι : Type _} [TopologicalSpace X]
  [TopologicalSpace Y] [CompactSpace X] [CompactSpace Y]
  (U : ι → Set (X × Y)) (hU : ∀ i, IsOpen (U i)) (hcov : (⋃ i, U i) = (univ : Set (X × Y))) :
  ∃ t : Finset ι, (⋃ i ∈ t, U i) = (univ : Set (X × Y)) := by sorry
