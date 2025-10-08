import Mathlib

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- If f is C^1 at x (i.e., cont_diff_at ℝ 1 f x), then f is differentiable at x. -/
theorem cont_diff_at.one_imp_differentiable_at {f : E → F} {x : E} (h : ContDiffAt ℝ 1 f x) :
    DifferentiableAt ℝ f x := by sorry
