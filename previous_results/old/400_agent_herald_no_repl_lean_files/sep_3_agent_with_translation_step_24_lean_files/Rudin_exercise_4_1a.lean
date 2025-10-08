import Mathlib

/-- There exists a function f : ℝ → ℝ such that for every x ∈ ℝ we have
    lim_{h → 0} (f(x+h) - f(x-h)) = 0, but f is not continuous. -/
theorem Rudin_exercise_4_1a : ∃ f : Real → Real,
  (∀ x : Real, ∀ ε > (0 : Real), ∃ δ > (0 : Real), ∀ h : Real,
    abs h < δ → abs (f (x + h) - f (x - h)) < ε) ∧ ¬ Continuous f := by
  -- Example: take f = Function.update (fun _ => 0) 0 1. Proof omitted.
  sorry
