import Mathlib

/-- Equip ℕ with the subspace topology induced from ℝ via the standard inclusion. -/
instance : TopologicalSpace ℕ := TopologicalSpace.induced (fun n : ℕ => (n : ℝ)) inferInstance

/-- Every subset of ℕ (with the subspace topology from ℝ) is both open and closed. -/
theorem Pugh_exercise_2_32a (s : Set ℕ) : IsOpen s ∧ IsClosed s := by
  sorry
