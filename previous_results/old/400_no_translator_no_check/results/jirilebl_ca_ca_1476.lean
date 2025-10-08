import Mathlib

open Filter

theorem limit_to_top_iff_big_vals (f : ℂ → ℂ) (z0 : ℂ) :
  Filter.Tendsto (fun z => ‖f z‖) (nhds z0) atTop ↔
  ∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z : ℂ, ‖z - z0‖ < δ → M < ‖f z‖ := by sorry
