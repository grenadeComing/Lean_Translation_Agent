import Mathlib

/-- Let f be defined for all real x, and suppose that |f(x)-f(y)| ≤ (x-y)^2 for all real x and y.
    Then f is constant. -/
theorem rudin_exercise_5_1 (f : ℝ → ℝ) (h : ∀ x y : ℝ, |f x - f y| ≤ (x - y)^2) : ∃ c : ℝ, ∀ x : ℝ, f x = c := by sorry
