import Mathlib

open Filter
open TopologicalSpace

lemma tendsto_norm_atTop_iff {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => ‖f z‖) (nhds z0) atTop ↔
  ∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z : ℂ, ‖z - z0‖ < δ → ‖f z‖ > M := by sorry
