import Mathlib

/-!
Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series
converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in
{ z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|.
-/

/-- If p is analytic on the open ball ball z0 ε, nonconstant on that ball, and p z0 ≠ 0,
then there exists w in the ball with ‖p w‖ < ‖p z0‖. -/
theorem exists_lt_norm_of_analytic_nonconstant {ε : ℝ} {z0 : ℂ} (hε : 0 < ε)
  (p : ℂ → ℂ) (hp_analytic : AnalyticOn ℂ p (Metric.ball z0 ε))
  (hp_nonconst : ∃ z, z ∈ Metric.ball z0 ε ∧ p z ≠ p z0) (hpz0 : p z0 ≠ 0) :
  ∃ w, w ∈ Metric.ball z0 ε ∧ ‖p w‖ < ‖p z0‖ := by sorry
