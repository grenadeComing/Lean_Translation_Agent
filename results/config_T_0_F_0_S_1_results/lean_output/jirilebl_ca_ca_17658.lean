import Mathlib

open Complex Metric Set

theorem exists_smaller_value_for_nonconstant_analytic_on_disk {ε : ℝ} (hε : 0 < ε) {z0 : ℂ} {p : ℂ → ℂ}
  (hp_analytic : AnalyticOn p (Metric.ball z0 ε))
  (hp_nonconst : ¬ (∀ z ∈ Metric.ball z0 ε, p z = p z0))
  (hp0 : p z0 ≠ 0) :
  ∃ w ∈ Metric.ball z0 ε, Complex.abs (p w) < Complex.abs (p z0) := by sorry
