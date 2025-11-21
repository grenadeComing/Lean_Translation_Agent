import Mathlib

/-!
Let A : ℝ^n → ℝ^m be a linear operator. Prove that A is differentiable at every x ∈ ℝ^n
and DA(x) is equal to A (as a linear map).
-/

theorem linear_map.differentiable_everywhere_and_fderiv_eq_self (m n : ℕ)
  (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ∀ x : Fin n → ℝ, DifferentiableAt ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x
    ∧ fderiv ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x = A := by sorry