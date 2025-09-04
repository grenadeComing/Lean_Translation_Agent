import Mathlib

open Filter

theorem jirilebl_ca_ca_1436 (f : ℂ → ℂ) (z0 : ℂ) :
  Tendsto (fun z => ‖f z‖) (nhds z0) (atTop : Filter ℝ) ↔
  ∀ M : ℝ, 0 < M → ∃ δ > 0, ∀ z : ℂ, ‖z - z0‖ < δ → ‖f z‖ > M := by
  sorry
