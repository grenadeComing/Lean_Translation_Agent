import Mathlib

/-- Let X be any topological space and Y a Hausdorff (T2) space. If continuous maps f,g : X → Y
    agree on a dense subset D of X, then f = g. -/

theorem ext_of_eq_on_dense {X : Type _} {Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {D : Set X} {f g : X → Y} (hD : Dense D) (hf : Continuous f) (hg : Continuous g)
  (h : ∀ x ∈ D, f x = g x) : f = g := by sorry
