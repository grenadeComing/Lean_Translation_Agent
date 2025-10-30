import Mathlib

/-- Statement: If A is dense in X and f,g: X → Y are continuous with Y Hausdorff, and f and g agree on A, then f = g. -/
theorem dense_eq_of_continuous
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} (hA : Dense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (hfg : ∀ x ∈ A, f x = g x) : f = g := by
  funext x
  sorry
