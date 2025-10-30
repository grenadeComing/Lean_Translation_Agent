import Mathlib


/-- Subgroups of (ℤ, +) are exactly the subgroups nℤ for integers n. -/
theorem subgroups_z_unique (H : AddSubgroup ℤ) : ∃ n : ℤ, H = AddSubgroup.zmultiples n := by
  sorry
