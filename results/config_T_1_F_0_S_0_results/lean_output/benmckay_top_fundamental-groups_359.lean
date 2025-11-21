import Mathlib

/-- Let X be a path connected topological space that admits a countable basis
of simply connected open sets. Then the fundamental group π₁(X, x0) is countable. -/
theorem countable_pi_1_of_countable_simply_connected_basis {X : Type*} [TopologicalSpace X]
  (path_conn : PathConnectedSpace X)
  (B : Set (Set X))
  (hB_basis : IsTopologicalBasis B)
  (hB_countable : Countable B)
  (hB_simply_conn : ∀ U, U ∈ B → IsSimplyConnected U)
  (x0 : X) :
  Countable (FundamentalGroup X x0) := by sorry