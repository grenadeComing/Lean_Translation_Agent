import Mathlib

variable {X : Type _} [TopologicalSpace X]

theorem frontier_eq_closure_inter_closure_compl (A : Set X) : frontier A = closure A ∩ closure (Aᶜ) := by sorry
