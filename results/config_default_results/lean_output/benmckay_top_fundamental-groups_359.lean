import Mathlib

/-- Let X be a path connected topological space that admits a countable basis of simply connected open sets.
    Then the fundamental group of X (at any basepoint) is countable. -/
theorem countable_fundamental_group_of_simply_connected_basis {X : Type _} [TopologicalSpace X]
  [PathConnectedSpace X] (x : X) (B : Set (Set X)) (hB_countable : Countable B)
  (hB_open : ∀ U ∈ B, IsOpen (U : Set X))
  (hB_simply : ∀ U (hU : U ∈ B) (y : X) (hy : y ∈ U), Subsingleton (FundamentalGroup (Subtype U) ⟨y, hy⟩))
  (hB_basis : ∀ V : Set X, IsOpen V → ∀ v ∈ V, ∃ U ∈ B, v ∈ U ∧ U ⊆ V) :
  Countable (FundamentalGroup X x) := by sorry
