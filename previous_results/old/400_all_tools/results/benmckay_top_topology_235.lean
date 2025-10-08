import Mathlib
open Set Filter
open scoped Topology

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

/-- If A is dense in X and two continuous functions f and g from X to a Hausdorff space Y agree on A, then f = g. -/
theorem eq_of_dense {A : Set X} (hA : Dense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (h : ∀ x ∈ A, f x = g x) : f = g := by sorry
