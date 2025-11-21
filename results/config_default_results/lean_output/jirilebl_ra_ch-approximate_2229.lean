import Mathlib

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in { z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|. -/
theorem local_nonmax_analytic_nonzero {z0 : ℂ} {ε : ℝ} (hε : 0 < ε)
  {p : ℂ → ℂ} (hp : AnalyticOn ℂ p (Metric.ball z0 ε))
  (hnonconst : ∃ z ∈ Metric.ball z0 ε, p z ≠ p z0)
  (h0 : p z0 ≠ 0) :
  ∃ w ∈ Metric.ball z0 ε, ‖p w‖ < ‖p z0‖ := by sorry
