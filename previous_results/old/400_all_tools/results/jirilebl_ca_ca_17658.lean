import Mathlib

open Topology Metric Filter

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z-z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in { z ∈ ℂ : |z-z0| < ε } such that |p(w)| < |p(z0)|. -/
theorem exists_mem_ball_norm_lt_of_norm_ne_zero {ε : ℝ} {z₀ : ℂ} {p : ℂ → ℂ} (hp : p ≠ 0) (hε : 0 < ε)
  (hpz₀ : p z₀ ≠ 0) : ∃ w ∈ Metric.ball z₀ ε, ‖p w‖ < ‖p z₀‖ := by sorry
