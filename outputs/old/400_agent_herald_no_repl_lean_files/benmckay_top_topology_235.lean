import Mathlib

/-!
# Extension of continuous maps from a dense subset into a Hausdorff space

If A is dense in X and f,g : X → Y are continuous maps to a Hausdorff space Y
that agree on A, then f = g.
-/

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
variable {A : Set X} {f g : X → Y}

theorem continuous_eq_on_dense (hA : Dense (A : Set X)) (hf : Continuous f) (hg : Continuous g)
    (h : EqOn f g A) : f = g := by sorry
