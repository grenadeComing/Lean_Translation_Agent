import Mathlib

/-!
Exercise: If \(\mathcal{T}_\alpha\) is a family of topologies on \(X\), show that
\(\bigcap \mathcal{T}_\alpha\) is a topology on \(X\).
We state the construction: the sets open in every \(\mathcal{T}_\alpha\) form a topology.
-/

noncomputable def intersection_of_topologies_is_topology {α : Type*} {X : Type*}
  (T : α → TopologicalSpace X) : TopologicalSpace X := by
  -- The topology whose open sets are those sets which are open in every T i
  -- is the intersection of the family (T i). Proof omitted.
  sorry
