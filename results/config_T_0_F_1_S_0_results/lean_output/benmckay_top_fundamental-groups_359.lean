import Mathlib

open Set

/-- If X is path connected and admits a countable basis of simply connected open sets,
then its fundamental group (at any basepoint) is countable. -/
theorem pi_1_countable_of_countable_simply_connected_basis
  {X : Type _} [TopologicalSpace X]
  (x0 : X)
  (hpath : PathConnectedSpace X)
  (B : Set (Set X))
  (hB_count : Countable B)
  (hB_open : ∀ U, U ∈ B → IsOpen (U : Set X))
  (hB_cover : ∀ x : X, ∃ U, U ∈ B ∧ x ∈ U)
  (hB_basis : ∀ U V, U ∈ B → V ∈ B → ∀ x, x ∈ U ∩ V → ∃ W, W ∈ B ∧ x ∈ W ∧ (W : Set X) ⊆ U ∩ V)
  (hB_simply : ∀ U (hU : U ∈ B) (x : X) (hx : x ∈ U), Subsingleton (FundamentalGroup (Subtype fun y => y ∈ U) ⟨x, hx⟩))
  : Countable (FundamentalGroup X x0) := by sorry