import Mathlib

open Subgroup

variable {G : Type _} [Group G]

/-- A subgroup H of G is characteristic if it is fixed by every automorphism of G. -/
def IsCharacteristic (H : Subgroup G) : Prop := ∀ (f : G ≃* G) (x : G), x ∈ H ↔ f x ∈ H

/-- Characteristic subgroups are normal: if H is characteristic in G then it is invariant under
    conjugation by any element of G. -/
theorem characteristic_subgroup_normal (H : Subgroup G) (h : IsCharacteristic H) :
  ∀ g x, x ∈ H → g * x * g⁻¹ ∈ H := by
  sorry
