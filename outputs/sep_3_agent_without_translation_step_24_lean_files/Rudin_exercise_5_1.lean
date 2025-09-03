import Mathlib

/-
Let f be defined for all real x, and suppose that |f(x)-f(y)| ≤ (x-y)^{2} for all real x and y. Prove that f is constant.
-/

theorem Rudin_exercise_5_1 (f : ℝ → ℝ) (h : ∀ x y : ℝ, abs (f x - f y) ≤ (x - y) ^ 2) : ∃ c : ℝ, ∀ x, f x = c := by sorry
