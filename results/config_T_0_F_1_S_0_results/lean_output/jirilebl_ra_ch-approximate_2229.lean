import Mathlib

open Complex

theorem jirilebl_ra_ch_approximate_2229 (ε : ℝ) (hε : 0 < ε) (z0 : ℂ) (p : Polynomial ℂ)
  (hp_nonconst : p.natDegree ≠ 0) (hp_z0_nonzero : Polynomial.eval z0 p ≠ 0) :
  ∃ w : ℂ, w ∈ Metric.ball z0 ε ∧ (‖Polynomial.eval w p‖ : ℝ) < (‖Polynomial.eval z0 p‖ : ℝ) :=
by sorry