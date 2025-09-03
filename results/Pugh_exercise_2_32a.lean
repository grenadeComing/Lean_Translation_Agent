import Mathlib

open Set

/-- In the subspace topology on ℕ induced by the inclusion into ℝ, every subset is clopen. -/
theorem Pugh_exercise_2_32a (s : Set ℕ) :
  @IsOpen ℕ (TopologicalSpace.induced (coe : ℕ → Real) (by infer_instance : TopologicalSpace Real)) s ∧
  @IsClosed ℕ (TopologicalSpace.induced (coe : ℕ → Real) (by infer_instance : TopologicalSpace Real)) s := by sorry
