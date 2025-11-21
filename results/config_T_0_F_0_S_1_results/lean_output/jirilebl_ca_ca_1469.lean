import Mathlib

open Complex Filter

theorem tendsto_cocompact_iff_forall_eps {f : ℂ → ℂ} {L : ℂ} :
  Tendsto f Filter.cocompact (nhds L) ↔
  ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → Complex.abs (f z - L) < ε := by sorry
