import Mathlib

/-!
# Rudin exercise 4.15

Statement: Every continuous open mapping of ℝ into ℝ is monotonic.
-/

theorem Rudin_exercise_4_15 (f : ℝ → ℝ) (h_cont : Continuous f) (h_open : IsOpenMap f) :
  Monotone f ∨ Antitone f := by sorry
