import Mathlib

open Filter

theorem tendsto_at_infty_iff_forall_abs {f : ℂ → ℂ} {L : ℂ} :
  Tendsto f (comap (fun z : ℂ => Complex.abs z) atTop) (nhds L) ↔
    ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, Complex.abs z > M → dist (f z) L < ε := by
  sorry
