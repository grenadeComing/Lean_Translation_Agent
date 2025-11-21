import Mathlib

/-- If A : ℝ^n → ℝ^m is a continuous linear map, then A is differentiable everywhere and its derivative at any point is A itself. -/

theorem linear_map_hasFDerivAt {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  HasFDerivAt (A : (Fin n → ℝ) → (Fin m → ℝ)) A x := by sorry

theorem linear_map_hasFDerivAt_univ {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ∀ x : Fin n → ℝ, HasFDerivAt (A : (Fin n → ℝ) → (Fin m → ℝ)) A x := by sorry
