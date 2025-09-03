import Mathlib

open MvPolynomial

/-- Exercise (Dummit & Foote 9.4.11): the polynomial x^2 + y^2 - 1 is irreducible in Q[x,y].
    We model Q[x,y] as MvPolynomial (Fin 2) ℚ with X 0 = x and X 1 = y. -/
theorem Dummit_Foote_exercise_9_4_11 :
  Irreducible (X (0 : Fin 2) ^ 2 + X (1 : Fin 2) ^ 2 - C (1 : ℚ)) := by
  sorry
