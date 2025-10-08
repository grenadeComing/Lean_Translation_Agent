import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- A map f : X → Y is continuous iff it commutes with taking closures of arbitrary subsets: for every A ⊆ Y,
    closure (f ⁻¹' A) = f ⁻¹' (closure A). -/
theorem continuous_iff_closure_preimage (f : X → Y) :
  Continuous f ↔ ∀ A : Set Y, closure (f ⁻¹' A) = f ⁻¹' (closure A) := by sorry
