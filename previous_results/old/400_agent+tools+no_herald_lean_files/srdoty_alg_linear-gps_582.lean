import Mathlib

noncomputable section

/-- The 2×2 matrix of reflection across the line through the origin making angle `θ` with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | (0 : Fin 2), (0 : Fin 2) => Real.cos (2 * θ)
    | (0 : Fin 2), (1 : Fin 2) => Real.sin (2 * θ)
    | (1 : Fin 2), (0 : Fin 2) => Real.sin (2 * θ)
    | (1 : Fin 2), (1 : Fin 2) => -Real.cos (2 * θ)

/-- For each `θ : ℝ`, the matrix `H θ` is orthogonal and has determinant `-1` (an improper orthogonal
matrix). The proof is omitted. -/
theorem reflection_is_improper_orthogonal (θ : ℝ) :
  Matrix.transpose (H θ) * H θ = (1 : Matrix (Fin 2) (Fin 2) ℝ) ∧ Matrix.det (H θ) = -1 := by sorry

end noncomputable section
