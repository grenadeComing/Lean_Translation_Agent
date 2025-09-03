import Mathlib

/-- Suppose g : ℝ → ℝ is differentiable with bounded derivative: there is M with
    |deriv g x| ≤ M for all x. Then there exists ε0 > 0 such that for all ε with
    |ε| < ε0 the map f(x) = x + ε * g(x) is injective. -/
theorem rudin_exercise_5_3 (g : ℝ → ℝ) (hg : Differentiable ℝ g) (M : ℝ) (hM : ∀ x, |deriv g x| ≤ M) :
  ∃ ε0 > 0, ∀ ε, |ε| < ε0 → Function.Injective (fun x => x + ε * g x) := by sorry
