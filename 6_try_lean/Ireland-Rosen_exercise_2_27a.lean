import Mathlib

/-!
Exercise: Show that the sum over squarefree positive integers of 1/n diverges.
We express this by stating that the series ∑_{k : ℕ} if Squarefree (k+1)
then (1 : ℝ)/(k+1) else 0 is not summable.
-/

theorem Ireland_Rosen_exercise_2_27a :
  ¬ Summable fun k : ℕ => if Squarefree (k+1) then (1 : ℝ) / (k+1) else 0 := by sorry
