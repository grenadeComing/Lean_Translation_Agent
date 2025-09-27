import Mathlib

/-- Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in { z ∈ ℂ : |z - z0| < ε } such that |p(w)| < |p(z0)|. -/
theorem jirilebl_ra_ch_approximate_2229 {p : Polynomial ℂ} (hp : p ≠ 0) (ε : ℝ) (hε : 0 < ε)
    (z0 : ℂ) (hpz0 : p.eval z0 ≠ 0) :
    ∃ w ∈ Metric.ball z0 ε, ‖p.eval w‖ < ‖p.eval z0‖ := by sorry
