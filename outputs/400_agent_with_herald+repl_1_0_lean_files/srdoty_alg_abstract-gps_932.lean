import Mathlib

/-- The subgroups of (ℤ, +) are exactly the subgroups nℤ for n : ℕ. -/
theorem subgroups_of_Z_are_zmultiples (H : AddSubgroup ℤ) :
  ∃ n : ℕ, H = AddSubgroup.zmultiples (n : ℤ) := by sorry
