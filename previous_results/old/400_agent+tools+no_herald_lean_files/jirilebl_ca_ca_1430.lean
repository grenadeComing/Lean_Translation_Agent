import Mathlib

open Filter Metric

theorem limit_at_infty_riemann_sphere_iff {f : ℂ → ℂ} {L : ℂ} :
  Tendsto f (cocompact ℂ) (nhds L) ↔
    ∀ ε > 0, ∃ M : ℝ, ∀ z : ℂ, dist z 0 > M → dist (f z) L < ε :=
by sorry
