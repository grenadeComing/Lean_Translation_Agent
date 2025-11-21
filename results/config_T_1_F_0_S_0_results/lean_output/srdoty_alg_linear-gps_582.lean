import Mathlib

def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => Real.cos (2 * θ)
    | 0, 1 => Real.sin (2 * θ)
    | 1, 0 => Real.sin (2 * θ)
    | 1, 1 => -Real.cos (2 * θ)

theorem reflection_matrix_improper_orthogonal (θ : ℝ) :
  let Hθ := H θ in
  Hθ.transpose * Hθ = 1 ∧ Matrix.det Hθ = -1 := by sorry