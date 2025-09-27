import Mathlib

universe u v

variables {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/-- A map p : X → Y is a quotient map if it is continuous, surjective, and a set U is open in Y
    iff its preimage p ⁻¹' U is open in X. -/
def is_quotient_map (p : X → Y) : Prop :=
  Continuous p ∧ Function.Surjective p ∧ ∀ U : Set Y, IsOpen U ↔ IsOpen (p ⁻¹' U)

/-- If p has a continuous right inverse f (so p ∘ f = id), then p is a quotient map. -/
theorem Munkres_exercise_22_2a (p : X → Y) (f : Y → X) (hp : Continuous p) (hf : Continuous f)
    (hcomp : p ∘ f = id) : is_quotient_map p := by
  -- proof omitted
  sorry
