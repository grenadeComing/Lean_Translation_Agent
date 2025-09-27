import Mathlib

open Complex Metric Set

/--
If p is an open map on C, nonconstant, and p z0 ≠ 0, then there is a point w in the open ball
of radius ε around z0 where |p w| < |p z0|.
(This formulation assumes the open-mapping property; for nonconstant complex polynomials or
holomorphic functions this hypothesis is satisfied by the open mapping theorem.)
-/
theorem exists_smaller_value_in_ball_of_open_map {z0 : ℂ} {ε : ℝ} (hε : 0 < ε)
  (p : ℂ → ℂ) (hopen : IsOpenMap p) (hnonconst : ∃ z, p z ≠ p z0) (hpz0 : p z0 ≠ 0) :
  ∃ w : ℂ, w ∈ Metric.ball z0 ε ∧ Complex.abs (p w) < Complex.abs (p z0) := by sorry
