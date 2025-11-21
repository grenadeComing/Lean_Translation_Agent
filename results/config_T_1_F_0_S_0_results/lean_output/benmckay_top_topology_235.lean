import Mathlib

/-- If X is a topological space and A ⊂ X is dense in X, then any two continuous
functions f, g : X → Y into a Hausdorff space Y which agree on A must be equal. -/
theorem continuous_eq_on_dense {X : Type _} {Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] {A : Set X} (hA : IsDense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (hfg : EqOn f g A) : f = g := by sorry