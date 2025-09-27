import Mathlib

/-!
Exercise (Dummit and Foote 9.1.6): Show that the ideal (x, y) is not principal in Q[x, y].
This file states the result in Lean. The proof is omitted (``by sorry'').
-/

theorem Dummit_Foote_exercise_9_1_6 :
  ¬ ∃ (f : MvPolynomial (Fin 2) ℚ),
    Ideal.span ({MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)} : Set (MvPolynomial (Fin 2) ℚ))
    = Ideal.span ({f} : Set (MvPolynomial (Fin 2) ℚ)) := by sorry
