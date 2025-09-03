import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- If p : X → Y has a continuous right inverse f (so p ∘ f = id), then p is a quotient map.
    We state the quotient property as: U ⊆ Y is open iff p ⁻¹' U is open in X. -/
theorem Munkres_exercise_22_2a (p : X → Y) (hp : Continuous p) (f : Y → X) (hf : Continuous f)
  (hcomp : p ∘ f = id) : ∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U) := by
  sorry
