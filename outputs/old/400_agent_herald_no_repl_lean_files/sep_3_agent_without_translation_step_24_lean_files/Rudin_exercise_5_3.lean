import Mathlib

open Function

/-- Rudin exercise 5.3 (translation):
Suppose g : ℝ → ℝ has bounded derivative, i.e. there exists M ≥ 0 with |g' x| ≤ M for all x.
Fix ε > 0 and define f(x) = x + ε * g(x). Then for ε small enough, f is injective.
-/
theorem Rudin_exercise_5_3 (g : ℝ → ℝ) (hg : DifferentiableOn ℝ g Set.univ) {M : ℝ}
  (hM : 0 ≤ M) (hbound : ∀ x : ℝ, |deriv g x| ≤ M) :
  ∃ ε0 > 0, ∀ ε : ℝ, 0 < ε → ε < ε0 → Injective (fun x => x + ε * g x) := by sorry
