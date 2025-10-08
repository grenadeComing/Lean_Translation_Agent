import Mathlib

open Set

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Pullback along the second projection induces an injective map
    ContinuousMap Y Z → ContinuousMap (X × Y) Z whose image consists of
    those continuous maps which are constant on each vertical slice {x} × Y.
    If A ⊆ X is dense then it suffices to check the constancy on A. -/
theorem pullback_snd_image_eq_const_slices {A : Set X} (hA : Dense A) :
  (range (fun f : ContinuousMap Y Z => f.comp (ContinuousMap.mk (Prod.snd : X × Y → Y) continuous_snd))) =
  { g : ContinuousMap (X × Y) Z | ∀ x y1 y2, g (x, y1) = g (x, y2) } := by sorry
