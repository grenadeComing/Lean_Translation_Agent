import Mathlib

/-!
Prove that if X is a topological space and A ⊆ X is dense in X, then any two continuous
functions f,g : X → Y into a Hausdorff space Y which agree on A must be equal.
-/

theorem continuous_ext_of_dense {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {A : Set X} (hA : Dense A)
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g)
  (h : ∀ x, x ∈ A → f x = g x) : f = g := by
  sorry
