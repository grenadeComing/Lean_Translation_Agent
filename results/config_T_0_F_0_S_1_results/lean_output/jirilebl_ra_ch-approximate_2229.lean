import Mathlib

open Metric

/--
Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series
converging in { z ∈ ℂ | |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists a w in the open
ball of radius ε around z0 such that |p(w)| < |p(z0)|.

This is a formulation of the (local) Maximum Modulus Principle for nonconstant holomorphic
functions; here we assume `p` is (complex) differentiable on the ball and not constant there.
-/
theorem exists_w_with_smaller_abs_of_nonconstant_holomorphic
  {ε : ℝ} {z0 : ℂ} {p : ℂ → ℂ}
  (hε : 0 < ε)
  (hd : DifferentiableOn ℂ p (ball z0 ε))
  (h_nonconst : ¬ IsConstantOn p (ball z0 ε))
  (h0 : p z0 ≠ 0) :
  ∃ w : ℂ, w ∈ ball z0 ε ∧ Complex.abs (p w) < Complex.abs (p z0) := by sorry
