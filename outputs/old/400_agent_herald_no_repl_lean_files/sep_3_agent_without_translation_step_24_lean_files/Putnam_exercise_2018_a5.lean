import Mathlib

/--
Putnam 2018 A5 (formal statement only).
Let f : ℝ → ℝ be infinitely differentiable with f(0) = 0, f(1) = 1 and f(x) ≥ 0 for all x.
Then there exist a positive integer n and a real x such that the n-th derivative of f at x is negative.
-/
theorem Putnam_exercise_2018_a5 (f : ℝ → ℝ)
  (hC : ContDiff ℝ ⊤ f)
  (h0 : f 0 = 0)
  (h1 : f 1 = 1)
  (hpos : ∀ x, 0 ≤ f x) :
  ∃ n : ℕ, ∃ x : ℝ, n > 0 ∧ ((deriv^[n] f) x) < 0 := by
  sorry
