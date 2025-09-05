import Mathlib

/-!
Let X be a topological space. Prove that a subset A ⊆ X is dense in X if and only if closure A = X.
In Lean, closure A is a `Set X`, so equality is with `univ : Set X`.
-/-

open Topology Set

variable {X : Type*} [TopologicalSpace X]

/-- A subset A of a topological space X is dense iff its closure equals the whole space. -/
theorem is_dense_iff_closure_eq_univ {A : Set X} : IsDense A ↔ closure A = (univ : Set X) := by sorry
