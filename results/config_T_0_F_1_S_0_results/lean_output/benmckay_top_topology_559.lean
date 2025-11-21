import Mathlib

/-!
Let X be a topological space. Prove that a subset A ⊆ X is dense in X iff closure A = X.
-/

variable {X : Type _} [TopologicalSpace X]

theorem dense_iff_closure_eq_univ (A : Set X) : Dense (A : Set X) ↔ closure A = univ := by sorry
