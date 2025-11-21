import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

lemma continuous_eq_of_eq_on_dense {A : Set X} {f g : X → Y}
  (hA : IsDense A)
  (hf : Continuous f)
  (hg : Continuous g)
  (hfg : ∀ x ∈ A, f x = g x) : f = g := by sorry