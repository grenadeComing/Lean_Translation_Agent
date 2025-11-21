import Mathlib

open Matrix

/-- The matrix of reflection across the line through the origin making angle θ with the x-axis. -/
noncomputable def H_theta (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then Real.cos (2 * θ)
    else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
    else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
    else -Real.cos (2 * θ)

/-- For each θ, H_theta is orthogonal and has determinant -1 (an improper orthogonal matrix). -/
theorem reflection_matrix_improper_orthogonal (θ : ℝ) :
  (H_theta θ) * (H_theta θ).transpose = 1 ∧ Matrix.det (H_theta θ) = -1 := by sorry
