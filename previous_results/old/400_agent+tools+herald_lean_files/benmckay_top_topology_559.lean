import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- A subset A of a topological space X is dense iff its closure is the whole space. -/
theorem benmckay_dense_iff_closure_eq {A : Set X} : Dense A ↔ closure A = univ := by sorry
