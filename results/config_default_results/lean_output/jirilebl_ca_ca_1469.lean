import Mathlib

/-- Limit at infinity (Riemann-sphere sense) for finite target L: neighborhood and ε-M formulations are equivalent. -/
theorem limit_in_riemann_sphere_iff_epsilon (f : ℂ → ℂ) (L : ℂ) :
  (∀ ε > 0, ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → f z ∈ Metric.ball L ε) ↔
  (∀ ε > 0, ∃ M : ℝ, ∀ z : ℂ, ‖z‖ > M → ‖f z - L‖ < ε) := by sorry
