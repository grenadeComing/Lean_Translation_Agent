import Mathlib
open Set Filter Topology

/-- Let f : X → Y be a map of topological spaces. Show that f is continuous iff for every subset A ⊆ Y one has closure (f^{-1}(A)) = f^{-1}(closure A). -/
theorem continuous_iff_closure_preimage_ext {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] {f : X → Y} :
  Continuous f ↔ ∀ A : Set Y, closure (f ⁻¹' A) = f ⁻¹' (closure A) := by sorry
