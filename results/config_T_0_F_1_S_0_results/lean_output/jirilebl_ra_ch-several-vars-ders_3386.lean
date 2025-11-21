import Mathlib

/-!
Mean value inequality for multivariable functions.
We state two versions:
- `mean_value_inequality_given` is a direct formalization of the user text (which
  subtracts the linear term f'(x) (y - x)). As discussed below, that exact
  statement (with the same constant M) is not generally true.
- `mean_value_inequality_correct` is the standard correct statement: if the
  operator norm of the derivative is bounded by M on a convex set U, then f is
  M-Lipschitz on U, i.e. |f y - f x| ≤ M * ‖y - x‖.

Both theorems are stated (no proof): `:= by sorry`.
-/

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

open Set

/-- The statement as given in the prompt. This exact formulation is not
necessarily true for the same constant `M` (see comments in the file). -/
theorem mean_value_inequality_given (U : Set E) (f : E → ℝ) (M : ℝ)
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 1 f U)
  (hM : ∀ x, x ∈ U → ‖fderiv ℝ f x‖ ≤ M) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ :=
by sorry

/-- The standard correct mean value inequality (Lipschitz bound).
If the operator norm of the derivative is bounded by `M` on a convex set `U`, then
for all `x,y ∈ U` we have `|f y - f x| ≤ M * ‖y - x‖`. -/
theorem mean_value_inequality_correct (U : Set E) (f : E → ℝ) (M : ℝ)
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 1 f U)
  (hM : ∀ x, x ∈ U → ‖fderiv ℝ f x‖ ≤ M) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x| ≤ M * ‖y - x‖ :=
by sorry
