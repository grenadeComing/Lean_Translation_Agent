import Mathlib
open Subgroup

/-- Prove that two elements $a, b$ of a group generate the same subgroup as $b a b^2, b a b^3$. Save it to: Artin_exercise_6_8_1.lean -/
theorem generate_same_subgroup (G : Type*) [Group G] (a b : G) :
    Subgroup.closure {a, b} = Subgroup.closure {b * a * b^2, b * a * b^3} := by sorry
