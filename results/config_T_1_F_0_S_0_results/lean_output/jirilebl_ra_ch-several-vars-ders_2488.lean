import Mathlib

/-- Let A : R^n → R^m be a linear operator. Prove that A is differentiable at every x ∈ R^n
    and the derivative fderiv ℝ A x is equal to A (as a continuous linear map). -/
theorem linear_map.differentiable_everywhere_and_fderiv_eq_self {n m : ℕ}
  (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ∀ x : Fin n → ℝ,
    DifferentiableAt ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x ∧
    fderiv ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x = A := by sorry