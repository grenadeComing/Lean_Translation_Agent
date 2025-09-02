import Mathlib

open Polynomial

/-- If a ∈ ℂ is a root of p(x) = x^5 + √2 x^3 + √5 x^2 + √7 x + √11,
    then a is algebraic over ℚ of degree at most 80. -/
theorem Herstein_exercise_5_4_3 (a : Complex)
  (h : Polynomial.eval a (X ^ 5 + C (Complex.ofReal (Real.sqrt 2)) * X ^ 3
        + C (Complex.ofReal (Real.sqrt 5)) * X ^ 2
        + C (Complex.ofReal (Real.sqrt 7)) * X
        + C (Complex.ofReal (Real.sqrt 11))) = 0) :
  IsAlgebraic ℚ a ∧ (Polynomial.natDegree (minpoly ℚ a) ≤ 80) := by sorry
