import Mathlib

open Filter

variable {f : ℂ → ℂ} {L : ℂ}

theorem tendsto_cocompact_at_infty_iff :
  Filter.Tendsto f (Filter.cocompact ℂ) (nhds L) ↔
    ∀ ε : ℝ, 0 < ε → ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → Complex.abs (f z - L) < ε := by
  sorry
