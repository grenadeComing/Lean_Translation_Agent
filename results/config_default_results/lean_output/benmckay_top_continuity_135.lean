import Mathlib

/-- Let X be a Hausdorff space and Y any topological space. If continuous maps f, g : X → Y
    agree on a dense subset of X, then f = g.  (This statement follows the user's wording,
    which assumes X is Hausdorff; the usual correct hypothesis is that Y is Hausdorff.) -/
theorem continuous_eq_of_eq_on_dense_of_t2_space {X Y : Type _} [TopologicalSpace X]
  [TopologicalSpace Y] [T2Space X] {f g : X → Y} (h : Dense {x : X | f x = g x})
  (hf : Continuous f) (hg : Continuous g) : f = g := by sorry
