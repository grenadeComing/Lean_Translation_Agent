import Mathlib

/-!
Prove that every contractible space is connected and has trivial homotopy groups.
This file states the lemma (no proof): a contractible topological space is connected
and all its homotopy groups are trivial.
-/

theorem contractible_space.connected_and_trivial_homotopy_groups {X : Type*} [TopologicalSpace X]
  [ContractibleSpace X] : ConnectedSpace X ∧ ∀ n : ℕ, IsTrivial (HomotopyGroup n X) := by sorry