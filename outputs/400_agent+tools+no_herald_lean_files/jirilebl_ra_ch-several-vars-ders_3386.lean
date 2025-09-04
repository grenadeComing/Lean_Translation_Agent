import Mathlib

open Set

variable {n : ℕ}

/-- Mean value inequality for multivariable functions on a convex set.
    Let f : (Fin n → ℝ) → ℝ have continuous partial derivatives on a convex set U.
    If the operator norm of the (Fréchet) derivative is bounded by M on U, then
    for all x,y ∈ U we have
      |f y - f x - (fderivWithin ℝ f U x) (y - x)| ≤ M * ‖y - x‖.
  -/
theorem mean_value_inequality_of_bounded_gradient {U : Set (Fin n → ℝ)}
  {f : (Fin n → ℝ) → ℝ} {M : ℝ}
  (hU : Convex ℝ U) (hcd : ContDiffOn ℝ 1 f U)
  (hM : ∀ x, x ∈ U → ‖(fderivWithin ℝ f U x : (Fin n → ℝ) →L[ℝ] ℝ)‖ ≤ M) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x - (fderivWithin ℝ f U x) (y - x)| ≤ M * ‖y - x‖ := by sorry
