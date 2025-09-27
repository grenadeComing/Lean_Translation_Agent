import Mathlib
open Set Filter Topology

/-- Let $f \colon X \to Y$ be a map of topological spaces. Show that $f$ is continuous if and only if for every subset $A \subseteq Y$ one has $\overline{f^{-1}(A)} = f^{-1}\!\left(\overline{A}\right)$. -/
theorem continuous_iff_closure_preimage_eq_preimage_closure {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] {f : X → Y} :
    Continuous f ↔ ∀ (A : Set Y), closure (f ⁻¹' A) = f ⁻¹' (closure A) := by sorry
