import Mathlib

/-
Putnam 2018 A5 (translation):
Let f : ℝ → ℝ be an infinitely differentiable function satisfying f(0)=0, f(1)=1,
and f(x) ≥ 0 for all x ∈ ℝ. Show that there exist a positive integer n and a real
number x such that the n-th derivative of f at x is negative.
-/

theorem Putnam_exercise_2018_a5 (f : ℝ → ℝ)
  (h_smooth : ContDiff ℝ ⊤ f)
  (h0 : f 0 = 0)
  (h1 : f 1 = 1)
  (h_nonneg : ∀ x, 0 ≤ f x) :
  ∃ n : ℕ, ∃ x : ℝ, n > 0 ∧ (Function.iterate deriv n f) x < 0 := by sorry
