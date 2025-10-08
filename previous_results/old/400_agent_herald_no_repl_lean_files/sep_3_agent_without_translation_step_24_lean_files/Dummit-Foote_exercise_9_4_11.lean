import Mathlib

/-!
Exercise: Show that x^2 + y^2 - 1 is irreducible in Q[x,y].
We state this in multivariable polynomial ring over Q with two variables (Fin 2).
-/

open MvPolynomial

theorem Dummit_Foote_exercise_9_4_11 :
  Irreducible (X (0 : Fin 2) ^ 2 + X (1 : Fin 2) ^ 2 - C (1 : ℚ)) :=
by sorry
