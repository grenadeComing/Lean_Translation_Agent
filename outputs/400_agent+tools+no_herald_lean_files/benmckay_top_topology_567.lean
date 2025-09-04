import Mathlib

variable {X : Type _} [TopologicalSpace X]

variable {A : Set X}

theorem boundary_eq_closure_inter_closure_complement :
  frontier A = closure A ∩ closure (Aᶜ) := by sorry
