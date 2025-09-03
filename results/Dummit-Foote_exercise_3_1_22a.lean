import Mathlib

/-!
Exercise: If H and K are normal subgroups of a group G then H ∩ K is also a normal subgroup of G.
This file states the result; the proof is omitted (:= by sorry).
-/

theorem subgroup_intersection_normal {G : Type*} [Group G] {H K : Subgroup G}
  (hH : ∀ g x, x ∈ H → g * x * g⁻¹ ∈ H)
  (hK : ∀ g x, x ∈ K → g * x * g⁻¹ ∈ K) :
  (∀ g x, x ∈ (H ⊓ K) → g * x * g⁻¹ ∈ (H ⊓ K)) := by sorry
