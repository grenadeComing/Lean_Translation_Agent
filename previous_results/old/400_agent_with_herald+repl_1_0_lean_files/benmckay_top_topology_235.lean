import Mathlib

/-- If A is dense in X and f,g are continuous functions X → Y into a Hausdorff space Y
    which agree on A, then f = g. -/
theorem continuous_eq_on_dense {X : Type*} [TopologicalSpace X] {Y : Type*} [TopologicalSpace Y] [T2Space Y]
  {A : Set X} (hA : Dense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (heq : ∀ x ∈ A, f x = g x) : f = g := by sorry
