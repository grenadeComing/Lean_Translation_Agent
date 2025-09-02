import Mathlib

/-- Rudin exercise: Suppose g : ℝ → ℝ is differentiable with bounded derivative: |g'| ≤ M.
    Show there exists δ > 0 such that for all ε with |ε| ≤ δ the map f(x) = x + ε g(x) is injective. -/
theorem Rudin_exercise_5_3 (g : ℝ → ℝ) (hg : Differentiable ℝ g) (M : ℝ) (hM : 0 ≤ M)
  (hbound : ∀ x, |deriv g x| ≤ M) :
  ∃ δ, 0 < δ ∧ ∀ ε, |ε| ≤ δ → Function.Injective fun x => x + ε * g x := by sorry
