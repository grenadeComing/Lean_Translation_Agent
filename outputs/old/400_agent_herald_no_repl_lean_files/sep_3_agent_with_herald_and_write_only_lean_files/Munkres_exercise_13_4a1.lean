import Mathlib

/--
If a family T : ι → TopologicalSpace X is given, the intersection of these topologies
is again a topology on X. We state this by asserting the existence of a topology t whose
open sets are exactly those sets that are open in every T i.
-/

theorem intersection_of_topologies_is_topology {X : Type*} {ι : Sort*} (T : ι → TopologicalSpace X) :
  ∃ (t : TopologicalSpace X), ∀ U, @IsOpen X t U ↔ ∀ i, @IsOpen X (T i) U := by sorry
