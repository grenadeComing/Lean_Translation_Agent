import Mathlib

open Set

/-- Example subset U of R^2 closed under scalar multiplication but not a subspace. -/
def U : Set (ℝ × ℝ) := { v | v.1 = 0 ∨ v.2 = 0 }

theorem U_nonempty : Set.Nonempty U := by sorry

theorem U_closed_under_smul : ∀ (a : ℝ) (v : ℝ × ℝ), v ∈ U → a • v ∈ U := by sorry

theorem U_not_subspace : ∃ (u v : ℝ × ℝ), u ∈ U ∧ v ∈ U ∧ u + v ∉ U := by sorry
