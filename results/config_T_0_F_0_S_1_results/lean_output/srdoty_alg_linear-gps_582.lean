import Mathlib

theorem reflection_matrix_improper_orthogonal :
  ∀ θ : ℝ,
  let H_theta : Matrix (Fin 2) (Fin 2) ℝ :=
    fun i j => if i = 0 then if j = 0 then cos (2 * θ) else sin (2 * θ) else if j = 0 then sin (2 * θ) else -cos (2 * θ)
  in (H_theta.transpose * H_theta = 1) ∧ (H_theta.det = -1) := by sorry