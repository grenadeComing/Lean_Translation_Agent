import Mathlib

/- Show that every subset of ℕ (with the subspace topology from ℝ) is clopen. -/
theorem Pugh_exercise_2_32a : ∀ s : Set ℕ, @IsClopen ℕ (TopologicalSpace.induced (coe : ℕ → Real) (inferInstance : TopologicalSpace Real)) s := by sorry
