import Mathlib

noncomputable section

open Polynomial

/--
Let p(x) = x^5 + sqrt(2) x^3 + sqrt(5) x^2 + sqrt(7) x + sqrt(11).
If a ∈ ℂ is a root of p, then a is algebraic over ℚ of degree at most 80.
-/

def p : Polynomial Complex :=
  X ^ 5 + C (Complex.ofReal (Real.sqrt 2)) * X ^ 3
    + C (Complex.ofReal (Real.sqrt 5)) * X ^ 2
    + C (Complex.ofReal (Real.sqrt 7)) * X
    + C (Complex.ofReal (Real.sqrt 11))

theorem Herstein_exercise_5_4_3 (a : Complex) :
  p.eval a = 0 -> IsAlgebraic ℚ a ∧ (Polynomial.degree (minpoly ℚ a) ≤ (80 : WithBot ℕ)) := by
  sorry

end
