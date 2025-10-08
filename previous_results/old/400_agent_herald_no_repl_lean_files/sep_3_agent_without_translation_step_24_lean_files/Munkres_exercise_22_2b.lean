import Mathlib

open Set

variable {X : Type*} {A : Set X}

variable [TopologicalSpace X] [TopologicalSpace (Subtype A)]

/-- We define what it means for a map to be a quotient map. -/
def is_quotient_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  Function.Surjective f ∧ ∀ U : Set Y, IsOpen U ↔ IsOpen (f ⁻¹' U)

/-- If A ⊆ X, a retraction of X onto A is a continuous map r : X → A such that r(a) = a for each a ∈ A.
    A retraction is a quotient map. -/
theorem retraction_is_quotient (r : X → Subtype A)
  (hr_cont : Continuous r) (hr_id : ∀ a : Subtype A, r a = a) : is_quotient_map r := by sorry
