import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- If p : X → Y has a continuous right inverse f with p ∘ f = id, then p is a quotient map.
    We express this by the universal property: a subset U of Y is open iff its preimage under p
    is open in X. -/
theorem Munkres_exercise_22_2a (p : X → Y) (hp : Continuous p)
  (f : Y → X) (hf : Continuous f) (h : p ∘ f = id) :
  ∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U) := by sorry
