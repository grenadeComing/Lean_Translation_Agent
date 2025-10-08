import Mathlib

/--
Suppose f : ℂ → ℂ is analytic everywhere, and for each z0 ∈ ℂ the Taylor expansion
f(z) = ∑_{n=0}^∞ c_n (z - z0)^n has at least one coefficient equal to 0.
Then f is a polynomial (i.e. there exists a polynomial p with f = p.eval).

This statement is encoded here in a form that does not commit to a particular
analyticity API: we assume for each center z0 there exists a sequence of
coefficients c (depending on z0) whose (absolutely) summable power series
reconstructs f on all of ℂ, and that for each such sequence at least one
coefficient vanishes.
-/

open Complex

theorem Shakarchi_exercise_2_13 (f : ℂ → ℂ)
  (h_taylor : ∀ z0 : ℂ, ∃ (c : ℕ → ℂ), (∀ z : ℂ, f z = ∑' (n : ℕ), c n * (z - z0) ^ n) ∧ (∃ n, c n = 0)) :
  ∃ p : Polynomial ℂ, ∀ z : ℂ, f z = p.eval z := by sorry
