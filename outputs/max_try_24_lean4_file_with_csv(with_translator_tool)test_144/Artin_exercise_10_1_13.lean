import Mathlib

/-- If x is nilpotent then 1 + x is a unit. -/
theorem nilpotent.add_one_isUnit {R : Type _} [Ring R] {x : R} (h : IsNilpotent x) : IsUnit (1 + x) := by sorry
