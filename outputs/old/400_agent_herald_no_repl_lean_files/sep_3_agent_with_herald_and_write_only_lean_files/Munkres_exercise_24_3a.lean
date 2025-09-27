import Mathlib

/-!
Munkres exercise 24.3(a).
Let f : X → X be continuous. Show that if X = [0,1], there is a point x such that f x = x.
This file states the intermediate value / fixed point formulation on the real closed interval.
-/-

open Set

theorem munkres_exercise_24_3a {f : ℝ → ℝ}
  (h_cont : Continuous f)
  (h_range : ∀ x ∈ (Icc (0 : ℝ) (1 : ℝ)), f x ∈ Icc (0 : ℝ) (1 : ℝ)) :
  ∃ x ∈ (Icc (0 : ℝ) (1 : ℝ)), f x = x := by
  sorry
