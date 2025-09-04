import Mathlib

open Polynomial

theorem exists_smaller_value_of_polynomial_in_ball (ε : ℝ) (hε : 0 < ε) (p : Polynomial ℂ) (hp : Polynomial.degree p ≠ 0) (z0 : ℂ) (hp0 : Polynomial.eval z0 p ≠ 0) :
  ∃ w : ℂ, w ∈ Metric.ball z0 ε ∧ (Complex.abs (Polynomial.eval w p) < Complex.abs (Polynomial.eval z0 p)) := by sorry
