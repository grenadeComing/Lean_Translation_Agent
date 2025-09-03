import Mathlib

/- Show that the sum over squarefree positive integers of 1/n diverges. -/
theorem Ireland_Rosen_exercise_2_27a :
  (∑' n : ℕ, if n = 0 ∨ ¬Squarefree n then (0 : ENNReal) else ENNReal.ofReal (1 / (n : ℝ))) = (⊤ : ENNReal) := by sorry
