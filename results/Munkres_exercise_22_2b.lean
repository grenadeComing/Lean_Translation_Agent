import Mathlib

open Set

/-- A map f : X → Y is a quotient map if it is continuous and a subset U of Y is open iff f⁻¹' U is open. -/
def is_quotient_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  Continuous f ∧ ∀ U : Set Y, IsOpen U ↔ IsOpen (f ⁻¹' U)

/-- If A ⊆ X, a retraction of X onto A is a continuous map r : X → A such that r a = a for all a ∈ A. -/
theorem retraction_is_quotient_map {X : Type _} [TopologicalSpace X] {A : Set X}
  (r : X → A) (hr : Continuous r) (hret : ∀ a : A, r a = a) : is_quotient_map r := by sorry
