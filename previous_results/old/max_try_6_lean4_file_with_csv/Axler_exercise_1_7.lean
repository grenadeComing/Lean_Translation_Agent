import Mathlib

/-- Example: union of the x- and y-axes in R^2. This set is closed under scalar
multiplication (each axis is a line through the origin) but not closed under
addition, hence not a subspace. -/

def U : Set (ℝ × ℝ) := { p : ℝ × ℝ | p.1 = 0 } ∪ { p : ℝ × ℝ | p.2 = 0 }

theorem U_nonempty : ∃ v : ℝ × ℝ, v ∈ U := by sorry

theorem U_closed_under_smul (a : ℝ) {v : ℝ × ℝ} (hv : v ∈ U) : a • v ∈ U := by sorry

theorem U_not_closed_under_add : ∃ u v : ℝ × ℝ, u ∈ U ∧ v ∈ U ∧ u + v ∉ U := by sorry
