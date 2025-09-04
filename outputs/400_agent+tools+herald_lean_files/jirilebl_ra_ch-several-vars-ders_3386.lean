import Mathlib

open Set

variable {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ} {M : ℝ}
  [NormedAddCommGroup (Fin n → ℝ)] [NormedSpace ℝ (Fin n → ℝ)]

theorem mean_value_inequality_multivariable (hU : Convex ℝ U)
  (hcont : ContinuousOn (fun x => fderiv ℝ f x) U)
  (hbound : ∀ x ∈ U, ∀ v, |(fderiv ℝ f x) v| ≤ M * ‖v‖) :
  ∀ x y, x ∈ U → y ∈ U → |f y - f x - (fderiv ℝ f x) (y - x)| ≤ M * ‖y - x‖ := by sorry
