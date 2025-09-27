import Mathlib

/-!
Exercise (Herstein 4.3.25): Let R be the ring of 2×2 matrices over the real numbers;
suppose that I is an ideal of R. Show that I = (0) or I = R.
-/

theorem Herstein_exercise_4_3_25 (I : Ideal (Matrix (Fin 2) (Fin 2) ℝ)) :
  I = ⊥ ∨ I = ⊤ := by sorry
