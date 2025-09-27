import Mathlib

open Set

/-
Exercise: Let f : X → X be continuous. Show that if X = [0,1], there is a point x such that f(x) = x.
This is the Brouwer fixed point theorem in one dimension (or the Intermediate Value argument).
We state the version for functions f : ℝ → ℝ that map the closed interval into itself and are
continuous on that interval.
-/

theorem exists_fixed_point_Icc {f : ℝ → ℝ} (hf_cont : ContinuousOn f (Icc (0 : ℝ) 1))
  (hf_map : ∀ x ∈ Icc (0 : ℝ) 1, f x ∈ Icc (0 : ℝ) 1) :
  ∃ x ∈ Icc (0 : ℝ) 1, f x = x := by
  sorry
