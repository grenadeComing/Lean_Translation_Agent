import Mathlib

variable {n : ℕ}

/-- Mean value inequality for multivariable functions (user statement).
Assumes f : ℝ^n → ℝ is differentiable on a convex set U and the operator norm
of the derivative is bounded by M on U, then
|f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖.
Note: This file only contains the statement (proof omitted).
-/
theorem mean_value_inequality {f : (Fin n → ℝ) → ℝ} {U : Set (Fin n → ℝ)} {M : ℝ}
  {x y : Fin n → ℝ} :
  Convex ℝ U →
  x ∈ U → y ∈ U →
  DifferentiableOn ℝ f U →
  (∀ z ∈ U, ‖fderiv ℝ f z‖ ≤ M) →
  |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ := by sorry
