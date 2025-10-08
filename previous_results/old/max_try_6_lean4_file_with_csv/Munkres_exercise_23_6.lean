import Mathlib

/-- Let A \subset X. Show that if C is a connected subspace of X that intersects both A and X-A, then C intersects \operatorname{Bd} A. -/
theorem inter_boundary_of_inter_compl_inter_boundary_extracted {X : Type*} [TopologicalSpace X] {A C : Set X} :
  IsConnected C → C ∩ A ≠ ∅ → C ∩ Aᶜ ≠ ∅ → C ∩ frontier A ≠ ∅ := by sorry
