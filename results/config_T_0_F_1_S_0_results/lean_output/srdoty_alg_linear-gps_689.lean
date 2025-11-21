import Mathlib

/-- The rotation matrix R_theta in dimension 2. -/
noncomputable def R_theta (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 then if j = 0 then Real.cos θ else -Real.sin θ
  else if j = 0 then Real.sin θ else Real.cos θ

/-- The rotation matrix is orthogonal and has determinant 1, hence lies in SO(2). -/
theorem R_theta_in_SO (θ : ℝ) :
  (Matrix.transpose (R_theta θ) * R_theta θ = (1 : Matrix (Fin 2) (Fin 2) ℝ)) ∧
  Matrix.det (R_theta θ) = 1 := by
  sorry
