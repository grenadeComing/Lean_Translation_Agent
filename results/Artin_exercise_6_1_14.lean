import Mathlib

open GroupTheory

variable {G : Type*} [Group G]

/-- If the quotient G / center G is cyclic, then G is abelian. -/
theorem Artin_exercise_6_1_14 (h : IsCyclic (G ⧸ center G)) : IsAbelian G := by sorry

/-- Consequently, the center equals the whole group. -/
theorem Artin_exercise_6_1_14_center_eq_top (h : IsCyclic (G ⧸ center G)) : (center G : Subgroup G) = ⊤ := by sorry
