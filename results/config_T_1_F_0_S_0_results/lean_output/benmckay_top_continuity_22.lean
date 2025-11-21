import Mathlib

/-!
Let f : X → Y be a map of topological spaces. Show that f is continuous iff for every subset
A ⊆ Y one has closure (f ⁻¹(A)) = f ⁻¹(closure A).
-/

theorem continuous_iff_closure_preimage (X Y : Type _) [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) :
  Continuous f ↔ ∀ A : Set Y, closure (f ⁻¹' A) = f ⁻¹' closure A := by sorry
