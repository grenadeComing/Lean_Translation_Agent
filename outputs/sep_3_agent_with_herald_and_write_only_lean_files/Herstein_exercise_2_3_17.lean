import Mathlib

open Set

variable {G : Type _} [Group G]

/-- Centralizer of an element a in a group G. -/
def C (a : G) : Set G := { g | g * a = a * g }

theorem Herstein_exercise_2_3_17 (a x : G) : C (x⁻¹ * a * x) = (fun g => x⁻¹ * g * x) '' C a := by sorry
