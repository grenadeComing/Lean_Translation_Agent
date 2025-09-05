import Mathlib

open TopologicalSpace

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-!
Original statement: "Let X be a Hausdorff space and Y any topological space. If continuous maps
f,g : X → Y agree on a dense subset of X, prove that f = g." 

This is incorrect as stated: the Hausdorff assumption should be on the target space Y, not on X.
The correct statement is below: if Y is Hausdorff and f, g : X → Y are continuous and agree on a
dense subset of X, then f = g.
-/

theorem continuous_eq_on_dense_of_target_t2 {f g : X → Y} [T2Space Y]
  (hf : Continuous f) (hg : Continuous g) (hd : Dense {x : X | f x = g x}) : f = g := by sorry
