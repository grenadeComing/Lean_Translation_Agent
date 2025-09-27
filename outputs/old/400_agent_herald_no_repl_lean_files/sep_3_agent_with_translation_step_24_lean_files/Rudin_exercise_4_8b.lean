import Mathlib

/-!
# Rudin Exercise 4.8(b) (corrected)
Let E ⊆ ℝ be unbounded. There exists a real function f which is uniformly continuous on E and is unbounded on E.

We formulate unboundedness of E by: for every M there exists x ∈ E with |x| > M.
-/

variable {E : Set ℝ}

theorem exists_unif_continuous_unbounded_on_unbounded_set
  (hE : ∀ M : ℝ, ∃ x ∈ E, |x| > M) :
  ∃ f : ℝ → ℝ, UniformContinuousOn f E ∧ (∀ M : ℝ, ∃ x ∈ E, |f x| > M) := by
  sorry
