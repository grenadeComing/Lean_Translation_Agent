import Mathlib

variable {n : ℕ}

/-- Mean value inequality for multivariable functions (as stated by the user):

Let f : ℝ^n → ℝ have continuous partial derivatives on a convex set U.
If ‖∇f(x)‖ ≤ M for all x ∈ U, then for all x,y ∈ U,

  |f(y) - f(x) - ∇f(x) · (y - x)| ≤ M * ‖y - x‖.

This is a direct formalization of the user statement (no proof included). -/
theorem mean_value_inequality_several_vars {U : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ) (M : ℝ)
  (hU : Convex ℝ U) (h_diff : DifferentiableOn ℝ f U) (h_bound : ∀ x ∈ U, ‖fderiv ℝ f x‖ ≤ M) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ := by sorry
