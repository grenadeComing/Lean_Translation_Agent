import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

theorem continuous_eq_on_dense {A : Set X} (hA : Dense A) {f g : X → Y} (hf : Continuous f) (hg : Continuous g) (h : ∀ x ∈ A, f x = g x) : f = g := by
  sorry
