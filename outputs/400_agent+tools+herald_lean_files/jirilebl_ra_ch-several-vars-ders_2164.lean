import Mathlib

open BigOperators

variable {n : ℕ} (b : Fin n → ℝ)

/-- The linear map given by dotting with b. -/
def dot_linear_map : (Fin n → ℝ) →ₗ[ℝ] ℝ :=
  { toFun := fun x => ∑ i : Fin n, b i * x i,
    map_add' := by
      intros x y
      exact (by sorry : _),
    map_smul' := by
      intros c x
      exact (by sorry : _) }

/-- The corresponding continuous linear map. -/
def dot_continuous_linear_map : (Fin n → ℝ) →L[ℝ] ℝ :=
  ContinuousLinearMap.mk (dot_linear_map (b := b)) (by sorry)

/-- The operator norm of the dot product map equals the Euclidean norm of b. -/
theorem opNorm_dot_eq_norm : ‖dot_continuous_linear_map (b := b)‖ = ‖(b : Fin n → ℝ)‖ := by sorry
