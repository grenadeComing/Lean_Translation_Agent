import Mathlib

/-!
Let A : ℝ^n → ℝ^m be a linear operator. Prove that A is differentiable at every x ∈ ℝ^n
and that the derivative D A(x) is equal to A (as a linear map).

We formalize this for finite-dimensional Euclidean spaces (Fin n → ℝ).
-/

theorem linear_map_differentiable_and_fderiv_eq {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  (∀ x : Fin n → ℝ, DifferentiableAt ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x) ∧
  (∀ x : Fin n → ℝ, fderiv ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x = A) := by sorry
