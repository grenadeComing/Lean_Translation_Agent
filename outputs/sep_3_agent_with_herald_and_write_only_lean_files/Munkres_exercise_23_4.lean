import Mathlib

open Set

/-- A topological space has the finite-complement (cofinite) topology if exactly the empty set
    and the sets with finite complement are open. -/
def finite_complement_topology {X : Type*} (t : TopologicalSpace X) : Prop :=
  ∀ U : Set X, TopologicalSpace.IsOpen t U ↔ (U = ∅ ∨ (Uᶜ).Finite)

/-- If X is infinite and carries the finite-complement topology, then X is connected. -/
theorem infinite_set_connected_in_finite_complement_topology {X : Type*}
  (t : TopologicalSpace X) (hX : Infinite X) (ht : finite_complement_topology t) :
  ConnectedSpace X := by sorry
