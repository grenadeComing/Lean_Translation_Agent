import Mathlib

/-- Exercise: For all n > 1, Z/nZ is not a group under multiplication of residue classes.
We express this by saying there exists a nonunit in `ZMod n` when `n > 1`. -/
theorem Dummit_Foote_exercise_1_1_5 (n : ℕ) (hn : 1 < n) : ∃ a : ZMod n, ¬ IsUnit (a : ZMod n) := by sorry
