import Mathlib

open Complex

lemma exists_point_with_smaller_value_polynomial (ε : ℝ) (hε : 0 < ε) (p : Polynomial ℂ)
  (hp_nonconst : ¬ ∃ (c : ℂ), p = Polynomial.C c) (z0 : ℂ)
  (hz : Polynomial.eval z0 p ≠ 0) :
  ∃ w : ℂ, Complex.abs (w - z0) < ε ∧ Complex.abs (Polynomial.eval w p) < Complex.abs (Polynomial.eval z0 p) := by sorry
