import Mathlib

/-- Exercise: Show that if S is connected, it is not true in general that its interior is connected.
    Example: two closed unit disks in R^2 touching at one boundary point. -/
theorem Pugh_exercise_2_57 : ∃ s : Set (ℝ × ℝ), IsConnected s ∧ ¬ IsConnected (interior s) := by sorry
