import Mathlib

open Polynomial

/-- Herstein exercise: there are infinitely many integers a such that
    f(x) = x^7 + 15 x^2 - 30 x + a is irreducible over Q. -/
theorem Herstein_exercise_4_6_3 : Set.Infinite { a : Int |
  Irreducible ((Polynomial.X ^ 7 + 15 * Polynomial.X ^ 2 - 30 * Polynomial.X + (a : ℚ)) : Polynomial ℚ)
} := by sorry