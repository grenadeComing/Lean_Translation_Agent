import Mathlib

open Filter

variable {f : ℂ → ℂ} {L : ℂ}

/-- For functions f : ℂ → ℂ, tending to L at infinity in the Riemann sphere (cocompact filter)
    is equivalent to the usual ε-M definition in terms of |z| > M. -/
theorem tendsto_cocompact_iff_metric :
  Filter.Tendsto f (Filter.cocompact ℂ) (nhds L) ↔
  ∀ ε : ℝ, ε > 0 → ∃ M : ℝ, ∀ z : ℂ, Norm.norm z > M → Norm.norm (f z - L) < ε := by sorry
