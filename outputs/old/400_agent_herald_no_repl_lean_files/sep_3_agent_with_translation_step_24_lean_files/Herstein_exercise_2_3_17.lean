import Mathlib

open Set

variable {G : Type _} [Group G]

theorem Herstein_exercise_2_3_17 (a x : G) :
  (Subgroup.centralizer ({x⁻¹ * a * x} : Set G) : Set G) =
  (fun y => x⁻¹ * y * x) '' (Subgroup.centralizer ({a} : Set G) : Set G) := by sorry
