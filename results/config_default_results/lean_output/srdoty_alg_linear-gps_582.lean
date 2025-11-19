import Mathlib

noncomputable def H_theta (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos (2 * θ), Real.sin (2 * θ)],
     ![Real.sin (2 * θ), - Real.cos (2 * θ)]]

/-- A matrix is in the orthogonal group O(2) if Aᵀ ⬝ A = I (the identity matrix). -/
def is_in_O2 (A : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  Aᵀ ⬝ A = (1 : Matrix (Fin 2) (Fin 2) ℝ)

/-- A matrix is an improper orthogonal matrix if it is in O(2) and has determinant -1. -/
def is_improper_orthogonal (A : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  (is_in_O2 A) ∧ Matrix.det A = -1

/-- For θ ∈ ℝ, the matrix representing the reflection of R^2 across the line through the origin
    making angle θ with the x-axis is H_theta. We record its properties below. -/
theorem reflection_matrix_properties (θ : ℝ) :
  is_in_O2 (H_theta θ) ∧ Matrix.det (H_theta θ) = -1 := by
  sorry
