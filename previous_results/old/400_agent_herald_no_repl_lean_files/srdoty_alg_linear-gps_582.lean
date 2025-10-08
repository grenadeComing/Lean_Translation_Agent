import Mathlib
open Matrix

/-- The reflection matrix across the line through the origin making angle `θ` with the x-axis.
    In coordinates (with respect to the standard basis) this is
    [[cos (2θ), sin (2θ)], [sin (2θ), -cos (2θ)]]. -/
def Hθ (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.of fun i j =>
    if i = 0 ∧ j = 0 then Real.cos (2 * θ)
    else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
    else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
    else -Real.cos (2 * θ)

/-- For each `θ : ℝ`, the reflection matrix `Hθ θ` is orthogonal and has determinant `-1`.
    (This expresses that the reflection is a linear operator and an improper orthogonal matrix.) -/
theorem reflection_matrix_improper_orthogonal (θ : ℝ) :
  Matrix.transpose (Hθ θ) * Hθ θ = 1 ∧ Matrix.det (Hθ θ) = -1 := by sorry
