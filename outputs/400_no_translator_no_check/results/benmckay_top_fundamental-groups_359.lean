import Mathlib

open Set Topology

/--
Let X be a path connected topological space that admits a countable basis of simply connected open sets.
Then the fundamental group of X (based at any point) is countable.
-/
theorem fundamental_group_countable_of_countable_basis_of_simply_connected
  {X : Type*} [TopologicalSpace X] (x : X) (hpath : PathConnectedSpace X)
  {B : Set (Set X)} (hB : B.Countable) (hB_open : ∀ U ∈ B, IsOpen U)
  (hB_sc : ∀ U ∈ B, U ∈ B → SimplyConnectedSpace (Subtype U))
  (hcov : ⋃₀ B = (univ : Set X)) :
  Countable (FundamentalGroup X x) := by
  sorry
