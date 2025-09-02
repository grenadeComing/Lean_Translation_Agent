import Mathlib

open Subgroup

theorem herstein_exercise_2_5_23 {G : Type _} [Group G]
  (h : ∀ a b : G, b * a * b⁻¹ ∈ Subgroup.closure ({a} : Set G)) :
  ∀ a b : G, ∃ j : Int, b * a = a ^ j * b := by sorry
