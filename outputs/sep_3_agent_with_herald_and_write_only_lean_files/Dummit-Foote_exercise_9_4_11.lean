import Mathlib

open Polynomial

/-- Dummit-Foote, Ex. 9.4.11:
    The polynomial x^2 + y^2 - 1 is irreducible in Q[x,y].
    We view Q[x,y] as (Polynomial (Polynomial ℚ)), i.e. polynomials in X over the coefficient ring Q[y]. -/
theorem Dummit_Foote_exercise_9_4_11 :
  Irreducible (
    (Polynomial.X : Polynomial (Polynomial ℚ)) ^ 2
    + Polynomial.C ((Polynomial.X : Polynomial ℚ) ^ 2 - 1)
  ) := by
  sorry
