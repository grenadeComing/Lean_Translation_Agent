import Mathlib

open Set

/--
Let f be a real uniformly continuous function on the bounded set E in R.
Prove that f is bounded on E.
-/
theorem Rudin_exercise_4_8a {f : ℝ → ℝ} {E : Set ℝ}
  (huc : UniformContinuousOn f E)
  (hE : ∃ M : ℝ, ∀ x ∈ E, abs x ≤ M) : ∃ N : ℝ, ∀ x ∈ E, abs (f x) ≤ N :=
by sorry
