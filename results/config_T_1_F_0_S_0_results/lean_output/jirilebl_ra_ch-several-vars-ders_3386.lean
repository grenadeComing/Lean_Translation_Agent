import Mathlib

/-- Mean value inequality for multivariable functions.
Let f : ℝ^n → ℝ have continuous partial derivatives on a convex set U.
If ‖∇f(x)‖ ≤ M for all x ∈ U, then
|f(y) - f(x) - ∇f(x) (y - x)| ≤ M ‖y - x‖. -/
theorem mean_value_inequality_multivariable {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {M : ℝ}
  (hU : Convex ℝ U)
  (h_deriv : ∀ x ∈ U, HasFDerivWithinAt f (fderiv ℝ f x) U x)
  (h_bound : ∀ x ∈ U, ‖(fderiv ℝ f x)‖ ≤ M)
  {x y : Fin n → ℝ} (hx : x ∈ U) (hy : y ∈ U) :
  |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ := by sorry
