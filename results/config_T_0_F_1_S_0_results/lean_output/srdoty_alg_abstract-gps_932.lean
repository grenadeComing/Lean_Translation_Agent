import Mathlib

-- The subgroups of (ℤ, +) are exactly the subgroups nℤ for integers n.
theorem subgroups_of_Z_eq_nz :
  ∀ (H : AddSubgroup ℤ), ∃ n : ℤ, H = AddSubgroup.zmultiples (n : ℤ) := by sorry
