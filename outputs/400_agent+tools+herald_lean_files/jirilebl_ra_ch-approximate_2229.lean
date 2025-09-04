import Mathlib

/--
If p is a nonconstant complex polynomial and p(z0) ≠ 0, then in any neighborhood of z0
there is a point w with |p(w)| < |p(z0)|.
-/
theorem exists_decrease_modulus_polynomial {ε : ℝ} {p : Polynomial ℂ} {z0 : ℂ}
  (hε : 0 < ε) (hnonconst : p.natDegree ≠ 0) (hp0 : Polynomial.eval z0 p ≠ 0) :
  ∃ w : ℂ, Complex.abs (w - z0) < ε ∧ Complex.abs (Polynomial.eval w p) < Complex.abs (Polynomial.eval z0 p) := by sorry
