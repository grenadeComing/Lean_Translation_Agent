import Mathlib

open Set

/--
Exercise: Let f : X → X be continuous. Show that if X = [0,1], there is a point x such that f x = x.
This is the 1-dimensional Brouwer fixed point (or a simple intermediate value argument).
-/

theorem munkres_exercise_24_3a {f : ℝ → ℝ} (hf : ContinuousOn f (Icc (0 : ℝ) 1))
  (hmap : ∀ x ∈ Icc (0 : ℝ) 1, f x ∈ Icc (0 : ℝ) 1) :
  ∃ x ∈ Icc (0 : ℝ) 1, f x = x := by sorry
