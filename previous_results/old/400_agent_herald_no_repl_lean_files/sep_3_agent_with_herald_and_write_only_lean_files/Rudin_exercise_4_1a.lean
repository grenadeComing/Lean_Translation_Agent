import Mathlib

/-!
Exercise: Suppose f is a real function defined on ℝ which satisfies
  lim_{h→0} f(x+h) - f(x-h) = 0 for every x ∈ ℝ.
Show that f does not need to be continuous.

Example: f(x) = 1 if x = 0, and f(x) = 0 otherwise. This has a removable
discontinuity at 0 but for every x the symmetric difference f(x+h)-f(x-h)
converges to 0 as h → 0.
-/

theorem Rudin_exercise_4_1a :
  ∃ f : ℝ → ℝ,
    (∀ x : ℝ, Tendsto (fun h : ℝ => f (x + h) - f (x - h)) (nhds 0) (nhds 0)) ∧
    ¬ Continuous (fun x : ℝ => f x) := by
  sorry
