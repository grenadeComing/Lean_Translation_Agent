import Mathlib
open Set Topology

/-- A subset A of a topological space X is dense iff its closure equals the whole space. -/
theorem dense_iff_closure_eq_univ {X : Type _} [TopologicalSpace X] {A : Set X} :
  Dense A ↔ closure A = (univ : Set X) := by sorry
