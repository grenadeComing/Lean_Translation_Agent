import Mathlib
open Polynomial
open scoped Classical

/-- There are infinitely many integers a such that f(x) = x^7 + 15 x^2 - 30 x + a is irreducible over \(\Q[x]\). -/
theorem Herstein_exercise_4_6_3 : Set.Infinite { a : Int | Irreducible (X ^ 7 + C (15 : ℚ) * X ^ 2 + C (-30 : ℚ) * X + C (a : ℚ)) } := by sorry
