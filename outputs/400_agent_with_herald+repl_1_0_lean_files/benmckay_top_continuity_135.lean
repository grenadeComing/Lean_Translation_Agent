import Mathlib

open Set

/-- Let X be any topological space and Y a Hausdorff (T2) space. If continuous maps f,g : X → Y
    agree on a dense subset A of X, then f = g. Here density of A is given by the neighborhoods
    formulation: for every x and every open neighborhood U of x there is a ∈ A ∩ U. -/
theorem continuous_eq_on_dense {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (hY : ∀ y1 y2 : Y, y1 ≠ y2 → ∃ (U V : Set Y), IsOpen U ∧ IsOpen V ∧ y1 ∈ U ∧ y2 ∈ V ∧ (U ∩ V = ∅))
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) (A : Set X)
  (hA : ∀ x : X, ∀ U : Set X, IsOpen U → x ∈ U → ∃ a ∈ A, a ∈ U)
  (hfg : ∀ a ∈ A, f a = g a) : f = g := by sorry
