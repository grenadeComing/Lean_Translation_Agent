import Mathlib
open Set

/-- Let \(X\) be a topological space and let \(A \subset X\) be any subset. Prove that the boundary of \(A\) equals the closures of \(A\) and \(X-A\) intersected: \(\partial A = \overline{A} \cap \overline{X-A}\). -/
theorem boundary_eq_inter_closure_compl_extracted {X : Type*} [TopologicalSpace X] {A : Set X} : frontier A = closure A ∩ closure (univ \ A) := by sorry
