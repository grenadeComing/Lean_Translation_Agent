import Mathlib

/-!
Corrected version of Rudin Ex. 4.8(b):
If E is bounded but not closed in ℝ, then there exists a real function f which is
continuous on E but not uniformly continuous on E.
-/

theorem Rudin_exercise_4_8b (E : Set ℝ) (h_bdd : Bounded E) (h_nonclosed : ∃ a, a ∈ closure E ∧ a ∉ E) :
  ∃ f : ℝ → ℝ, ContinuousOn f E ∧ ¬UniformContinuousOn f E := by
  sorry
