import Mathlib

/-- The subgroups of (ℤ, +) are exactly the subgroups nℤ for integers n. -/
theorem subgroups_eq_zmultiples (H : AddSubgroup ℤ) : ∃ n : ℕ, H = AddSubgroup.zmultiples (n : ℤ) := by sorry
