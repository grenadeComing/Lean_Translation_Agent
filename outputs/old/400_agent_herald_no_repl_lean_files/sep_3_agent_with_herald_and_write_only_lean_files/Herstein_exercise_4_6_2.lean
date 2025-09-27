import Mathlib

/-- Polynomial f(x) = x^3 + 3x + 2 over Q. -/
def f : Polynomial ℚ := Polynomial.X ^ 3 + 3 * Polynomial.X + 2

theorem Herstein_exercise_4_6_2 : Irreducible (f : Polynomial ℚ) := by sorry
