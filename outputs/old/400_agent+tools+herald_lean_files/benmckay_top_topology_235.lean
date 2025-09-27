import Mathlib

open Set

/-- If A is dense in X and f,g : X → Y are continuous maps into a Hausdorff space Y
    which agree on A, then f = g as functions. -/
theorem continuous_eq_on_dense_of_T2 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (A : Set X) (hA : Dense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (h : Set.EqOn f g A) : f = g := by sorry
