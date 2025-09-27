import Mathlib

open Set

/-- Rudin, Exercise 4.5(b).
There exists a subset E of ℝ and a function f : E → ℝ which is continuous (as a map from the
subtype E) but which admits no continuous extension g : ℝ → ℝ with g x = f x for all x ∈ E.
A concrete choice is E = {1/(n+1), -1/(n+1) | n : ℕ} and f(1/(n+1)) = 1, f(-1/(n+1)) = -1.
(The proof that this f is continuous on E and cannot be extended continuously to ℝ is omitted.) -/
theorem Rudin_exercise_4_5b :
  ∃ (E : Set ℝ) (f : ↥E → ℝ),
    Continuous f ∧ ¬ ∃ g : ℝ → ℝ, Continuous g ∧ ∀ x : ↥E, g (x : ℝ) = f x := by
  -- Take E = range (fun n => (1 : ℝ) / (n + 1)) ∪ range (fun n => - (1 : ℝ) / (n + 1))
  -- and define f on E by f(x) = 1 if x > 0 and f(x) = -1 if x < 0.
  -- Then f is continuous on E (each point of E is isolated in E) but any continuous extension
  -- to ℝ would force contradictory limits at 0, so no such extension exists.
  sorry
