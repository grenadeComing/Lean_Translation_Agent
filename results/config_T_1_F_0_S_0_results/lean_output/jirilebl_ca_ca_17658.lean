import Mathlib

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in { z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|.

This file contains the polynomial specialization of that statement. -/
theorem exists_mem_ball_lt_abs_polynomial_of_nonzero {ε : ℝ} {z0 : ℂ} {p : Polynomial ℂ}
  (hp : p ≠ 0) (hpz0 : p.eval z0 ≠ 0) (hε : 0 < ε) :
  ∃ w ∈ Metric.ball z0 ε, Complex.abs (p.eval w) < Complex.abs (p.eval z0) := by sorry