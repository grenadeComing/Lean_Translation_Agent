import Mathlib

/-- The subgroups of (ℤ, +) are exactly the subgroups nℤ for integers n. -/
theorem add_subgroup_int_eq_zmultiples (H : AddSubgroup ℤ) :
  ∃ n : ℕ, (H : Set ℤ) = {k : ℤ | ∃ m : ℤ, k = m * (n : ℤ)} := by sorry