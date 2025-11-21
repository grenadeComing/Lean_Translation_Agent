import Mathlib

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in { z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|. -/
theorem exists_mem_ball_abs_lt_of_nonconstant_analytic {ε : ℝ} {z0 : ℂ} {p : ℂ → ℂ}
  (hε : 0 < ε)
  (h_analytic : IsHolomorphicOn p (Metric.ball z0 ε))
  (h_nonconst : ∃ z, z ∈ Metric.ball z0 ε ∧ p z ≠ p z0)
  (hp0 : p z0 ≠ 0) :
  ∃ w ∈ Metric.ball z0 ε, Complex.abs (p w) < Complex.abs (p z0) := by sorry