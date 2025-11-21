import Mathlib

open Filter

theorem tendsto_cocompact_iff_forall_eps_exists_M (f : ℂ → ℂ) (L : ℂ) :
  Tendsto f (cocompact ℂ) (nhds L) ↔
    ∀ ε : ℝ, 0 < ε → ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → ‖f z - L‖ < ε :=
  by sorry
