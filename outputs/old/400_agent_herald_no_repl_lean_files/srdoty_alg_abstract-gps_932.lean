import Mathlib

/-- The subgroups of (ℤ, +) are exactly the subgroups nℤ for n ∈ ℕ. -/
theorem add_subgroups_Z_eq_zmultiples : ∀ H : AddSubgroup ℤ, ∃ n : ℕ, H = AddSubgroup.zmultiples (n : ℤ) := by sorry
