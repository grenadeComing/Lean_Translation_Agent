import Mathlib

variable {n m : ℕ}

theorem linear_map_differentiable_and_fderiv (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  DifferentiableAt ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x ∧
  fderiv ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x = A := by
  sorry
