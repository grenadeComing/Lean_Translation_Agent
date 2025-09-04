import Mathlib

lemma exists_point_with_smaller_value_of_polynomial {ε : ℝ} (hε : 0 < ε) (p : Polynomial ℂ)
  (hnonconst : p ≠ 0) (z0 : ℂ) (h0 : Polynomial.eval z0 p ≠ 0) :
  ∃ w : ℂ, Complex.abs (w - z0) < ε ∧ Complex.abs (Polynomial.eval w p) < Complex.abs (Polynomial.eval z0 p) := by
  sorry
