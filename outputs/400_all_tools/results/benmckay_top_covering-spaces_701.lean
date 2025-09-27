import Mathlib
open Set Filter
open scoped Topology
open TopologicalSpace

/-- Classify all topological spaces Y for which there exists a covering map p : ℝ → Y (i.e., ℝ is a covering space of Y): show Y is homeomorphic to ℝ or to S^1. -/
theorem covering_space_of_real_homeo (Y : Type*) [TopologicalSpace Y] (p : ℝ → Y) (hp : IsCoveringMap p) :
  Nonempty (Y ≃ₜ ℝ) ∨ Nonempty (Y ≃ₜ Circle) := by sorry
