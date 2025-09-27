import Mathlib

variable {G : Type _} [Group G] (H : Subgroup G)

/-- A subgroup H is normal iff the commutator subgroup [G, H] is contained in H. -/
theorem Dummit_Foote_exercise_5_4_2 : H.normal ↔ Subgroup.closure ({ g * (h : G) * g⁻¹ * (h : G)⁻¹ | g : G, h : H } : Set G) ≤ H := by sorry
