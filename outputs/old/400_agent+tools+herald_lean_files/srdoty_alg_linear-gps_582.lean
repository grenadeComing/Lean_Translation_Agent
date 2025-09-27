import Mathlib

noncomputable section

/-- Reflection matrix across the line through the origin making angle θ with the x-axis. -/
def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then Real.cos (2 * θ) else Real.sin (2 * θ)
    else
      if j = (0 : Fin 2) then Real.sin (2 * θ) else -Real.cos (2 * θ)

/-- For each θ, H θ is orthogonal and has determinant -1 (an improper orthogonal matrix). -/
theorem reflection_matrix_improper_orthogonal (θ : ℝ) :
  (H θ * (H θ).transpose = 1) ∧ (Matrix.det (H θ) = (-1 : ℝ)) := by sorry

end noncomputable section
