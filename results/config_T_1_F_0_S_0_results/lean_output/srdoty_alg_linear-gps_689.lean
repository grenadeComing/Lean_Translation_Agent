import Mathlib

/-- The 2×2 rotation matrix R(θ) -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = (0 : Fin 2) then if j = (0 : Fin 2) then Real.cos θ else -Real.sin θ
  else if j = (0 : Fin 2) then Real.sin θ else Real.cos θ

/-- R(θ) has determinant 1 and is orthogonal, so it belongs to SO(2). -/
theorem R_theta_mem_SO2 (θ : ℝ) : Matrix.det (R θ) = 1 ∧ Matrix.transpose (R θ) ⬝ (R θ) = 1 := by sorry