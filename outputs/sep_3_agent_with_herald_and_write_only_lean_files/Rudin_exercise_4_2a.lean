import Mathlib

/-
If f is a continuous mapping of a metric space X into a metric space Y,
prove that f(closure E) ⊆ closure (f(E)) for every set E ⊆ X.
-/

open Set

variable {X : Type*} {Y : Type*} [MetricSpace X] [MetricSpace Y]

theorem image_closure_subset_closure_image {E : Set X} {f : X → Y} (hf : Continuous f) :
  f '' closure E ⊆ closure (f '' E) :=
by
  -- proof omitted
  sorry
