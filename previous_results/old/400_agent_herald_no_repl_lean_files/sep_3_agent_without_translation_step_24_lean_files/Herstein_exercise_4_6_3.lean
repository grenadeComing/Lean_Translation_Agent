import Mathlib

open Polynomial

theorem herstein_exercise_4_6_3 :
  Set.Infinite { a : ℤ |
    Irreducible (X ^ 7 + C (15 : ℚ) * X ^ 2 + C (-30 : ℚ) * X + C (a : ℚ)) } := by
  sorry
