import Mathlib

/--
Let X be a Hausdorff space and Y any topological space. If continuous maps f,g : X → Y
agree on a dense subset of X, prove that f = g.

This is a direct formalization of the (incorrect) statement as given.
-/
theorem eq_of_eq_on_dense_of_T2_domain {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space X] {f g : X → Y} (s : Set X) (hs : Dense s) (h : ∀ x ∈ s, f x = g x) :
  f = g := by sorry
