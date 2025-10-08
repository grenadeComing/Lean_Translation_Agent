import Mathlib

open Set

variable {X : Type u} [TopologicalSpace X] {A : Set X}

/-- A subset A of a topological space X is dense iff its closure equals the whole space. -/
theorem dense_iff_closure_eq_univ : Dense (A : Set X) ↔ closure A = (univ : Set X) := by sorry
