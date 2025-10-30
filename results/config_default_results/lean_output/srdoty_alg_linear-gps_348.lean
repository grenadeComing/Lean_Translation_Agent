import Mathlib

-- Show that GL(n) = {A ∈ Matrix n n ℝ | det A ≠ 0} is a group under matrix multiplication. End the Lean4 code with := by sorry. -/
theorem isGroup_GL_real (n : Type) [Fintype n] [DecidableEq n] : IsGroup (GL n ℝ) := by
  sorry
