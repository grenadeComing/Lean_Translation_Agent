import Mathlib

/-!
Corrected statement and Lean translation.
Note: The original natural-language statement had the Hausdorff condition on the domain X,
but the standard (and necessary) hypothesis is that the codomain Y is Hausdorff.
If two continuous maps f, g : X → Y agree on a dense subset of X and Y is Hausdorff,
then f = g.
-/

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

/-- If continuous maps f and g from X to a Hausdorff space Y agree on a dense subset of X,
    then they are equal. -/
theorem continuous_eq_of_eq_on_dense {f g : X → Y}
  (h_dense : Dense { x | f x = g x }) (hf : Continuous f) (hg : Continuous g) : f = g := by sorry
