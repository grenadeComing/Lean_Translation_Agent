import Mathlib

/-
Exercise (Pugh 3.1).
Assume that f : ℝ → ℝ satisfies |f(t) - f(x)| ≤ |t - x|^2 for all t, x. Prove that f is constant.
-/

theorem Pugh_exercise_3_1 (f : ℝ → ℝ)
  (h : ∀ t x : ℝ, abs (f t - f x) ≤ abs (t - x) ^ 2) :
  ∃ c : ℝ, ∀ x : ℝ, f x = c := by sorry
