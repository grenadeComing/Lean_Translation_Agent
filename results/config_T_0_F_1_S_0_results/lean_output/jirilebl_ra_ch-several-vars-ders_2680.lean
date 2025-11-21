import Mathlib

/--
If f : ℝ^n → ℝ is C^1 at x0 (i.e., has a continuous derivative at x0), then f is differentiable at x0.
This states the usual fact that C^1 implies differentiable (Fréchet differentiability) at the point.
-/
theorem c1_implies_differentiable_at {n : ℕ} {f : (Fin n → ℝ) → ℝ} {x0 : Fin n → ℝ}
  (h : ContDiffAt ℝ 1 f x0) : DifferentiableAt ℝ f x0 := by sorry
