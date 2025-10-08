import Mathlib

/-- Rudin, Exercise 4.15: Every continuous open mapping of ℝ into ℝ is monotonic. -/
theorem Rudin_exercise_4_15 (f : ℝ → ℝ) (hf : Continuous f) (hopen : IsOpenMap f) :
  Monotone f ∨ Antitone f := by sorry
