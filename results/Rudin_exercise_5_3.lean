import Mathlib

/-!
Exercise (Rudin 5.3, translated).
Suppose g : ℝ → ℝ is differentiable and its derivative is bounded: there exists M ≥ 0 with
  ∀ x, |deriv g x| ≤ M.
Fix ε > 0 and define f(x) = x + ε * g(x). Then for ε small enough, f is one-to-one.
-/

theorem rudin_exercise_5_3 (g : ℝ → ℝ) (hg : Differentiable ℝ g) (M : ℝ) (M_nonneg : 0 ≤ M)
  (hM : ∀ x, |deriv g x| ≤ M) : ∃ ε : ℝ, 0 < ε ∧ Function.Injective (fun x => x + ε * g x) := by sorry
