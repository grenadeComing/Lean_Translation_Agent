import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let f : X → Y be a map of topological spaces. f is continuous iff for every subset A ⊆ Y,
    closure (f ⁻¹' A) = f ⁻¹' (closure A). -/
theorem continuous_iff_closure_preimage (f : X → Y) :
  Continuous f ↔ ∀ A : Set Y, closure (f ⁻¹' A) = f ⁻¹' (closure A) := by
  sorry
