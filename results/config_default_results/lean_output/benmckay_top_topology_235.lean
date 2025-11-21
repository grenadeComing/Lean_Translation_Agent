import Mathlib
open Set Filter
open scoped Topology
open TopologicalSpace

/-- If X is a topological space and A ⊆ X is dense in X, then any two continuous functions f, g : X → Y into a Hausdorff space Y which agree on A must be equal. -/
theorem eq_of_forall_mem_dense_extracted {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} : Dense A → ∀ {f g : X → Y}, Continuous f → Continuous g → (∀ x ∈ A, f x = g x) → f = g := by sorry
