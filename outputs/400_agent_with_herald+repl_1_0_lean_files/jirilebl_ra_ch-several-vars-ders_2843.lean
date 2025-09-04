import Mathlib

theorem gradient_norm_eq_opNorm {n : ℕ} (f : (Fin n → ℝ) → ℝ) (x0 : Fin n → ℝ)
  (hf : HasFDerivAt f (fderiv ℝ f x0) x0) :
  ‖(fderiv ℝ f x0 : (Fin n → ℝ) →L[ℝ] ℝ)‖ =
    ContinuousLinearMap.opNorm (fderiv ℝ f x0 : (Fin n → ℝ) →L[ℝ] ℝ) := by sorry
