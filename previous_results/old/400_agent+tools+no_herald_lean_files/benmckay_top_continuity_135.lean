import Mathlib

open Set

variable {X : Type _} {Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- If continuous maps f g : X → Y agree on a dense subset of X, then f = g. -/
theorem continuous_eq_on_dense_of_eq_on_dense (hX : T2Space X) {f g : X → Y}
  (hf : Continuous f) (hg : Continuous g) (h : Dense {x | f x = g x}) : f = g := by sorry
