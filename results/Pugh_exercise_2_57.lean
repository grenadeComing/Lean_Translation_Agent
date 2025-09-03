import Mathlib

/-- Example in R^2: union of two closed unit disks centered at (0,0) and (2,0). -/
def example_set : Set (Real × Real) :=
  { p | p.1 * p.1 + p.2 * p.2 ≤ 1 } ∪ { p | (p.1 - 2) * (p.1 - 2) + p.2 * p.2 ≤ 1 }

/-- Pugh exercise 2.57: there exists a connected set whose interior is not connected. -/
theorem Pugh_exercise_2_57 : IsConnected example_set ∧ ¬ IsConnected (interior example_set) := by sorry
