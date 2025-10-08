import Mathlib

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series
converging in the ball { z : Complex | |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in the
ball such that |p(w)| < |p(z0)|. -/
theorem exists_smaller_abs_of_nonconst_holomorphic
  {ε : ℝ} {z0 : Complex} {p : Complex → Complex}
  (hε : 0 < ε)
  (hhol : IsHolomorphicOn p (Metric.ball z0 ε))
  (hnc : ¬ IsConstOn p (Metric.ball z0 ε))
  (hz0 : p z0 ≠ 0) : ∃ w ∈ Metric.ball z0 ε, Complex.abs (p w) < Complex.abs (p z0) := by sorry