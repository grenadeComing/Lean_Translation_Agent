import Mathlib

open MvPolynomial

/-- Exercise (Dummit & Foote 9.1.6): The ideal (x, y) in Q[x, y] is not principal. -/
theorem Dummit_Foote_exercise_9_1_6 :
  ¬ ∃ p : MvPolynomial (Fin 2) ℚ,
    Ideal.span ({X (0 : Fin 2), X (1 : Fin 2)} : Set (MvPolynomial (Fin 2) ℚ)) =
      Ideal.span ({p} : Set (MvPolynomial (Fin 2) ℚ)) := by
  sorry
