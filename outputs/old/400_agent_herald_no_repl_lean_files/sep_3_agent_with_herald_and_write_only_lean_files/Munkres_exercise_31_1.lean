import Mathlib
open Set Topology

/-- Show that if $X$ is regular, every pair of points of $X$ have neighborhoods whose closures are disjoint. -/
lemma regular_iff_pairwise_disjoint_closed_nhd_tac_4791 [TopologicalSpace X] : RegularSpace X → ∀ (x y : X), x ≠ y → ∃ U V, IsClosed U ∧ IsClosed V ∧ x ∈ U ∧ y ∈ V ∧ U ∩ V = ∅ := by sorry
