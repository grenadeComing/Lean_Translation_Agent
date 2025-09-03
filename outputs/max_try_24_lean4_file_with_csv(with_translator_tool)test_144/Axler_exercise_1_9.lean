import Mathlib

/-- Axler Exercise 1.9

Prove that the union of two subspaces of V is a subspace of V iff one of the subspaces is contained in the other. -/

theorem Axler_exercise_1_9 {R V : Type _} [Semiring R] [AddCommMonoid V] [Module R V]
  (U W : Submodule R V) :
  (∃ S : Submodule R V, (S : Set V) = (U : Set V) ∪ (W : Set V)) ↔ (U ≤ W ∨ W ≤ U) := by sorry
