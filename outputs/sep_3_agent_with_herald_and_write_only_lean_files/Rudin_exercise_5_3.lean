import Mathlib

/--
Suppose g : ℝ → ℝ has bounded derivative |g'| ≤ M. Fix ε > 0 and define f(x) = x + ε g(x).
Then f is one-to-one for sufficiently small ε.
-/

theorem Rudin_exercise_5_3 (g : ℝ → ℝ) (M : ℝ) (hM : 0 ≤ M)
  (hg : Differentiable ℝ g) (hbound : ∀ x : ℝ, |deriv g x| ≤ M) :
  ∃ ε0 : ℝ, ε0 > 0 ∧ ∀ ε : ℝ, |ε| < ε0 → Function.Injective (fun x => x + ε * g x) := by sorry
