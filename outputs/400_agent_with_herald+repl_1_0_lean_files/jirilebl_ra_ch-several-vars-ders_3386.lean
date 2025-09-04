import Mathlib

/-- Mean value inequality for multivariable functions (translation).
If f : R^n → R is C^1 on a convex set U and the operator norm of the derivative
is bounded by M on U, then the linearization error is bounded by M times the distance.
-/
theorem mean_value_inequality_multivar {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (h : ContDiffOn ℝ 1 f U) (hU : Convex ℝ U) (M : ℝ) (hM : ∀ x, x ∈ U → ‖(fderiv ℝ f x)‖ ≤ M) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ := by sorry
