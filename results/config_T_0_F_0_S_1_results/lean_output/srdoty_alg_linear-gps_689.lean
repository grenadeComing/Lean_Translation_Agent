import Mathlib

open Real
open Matrix

/-- The 2×2 rotation matrix R(θ) = [[cos θ, -sin θ], [sin θ, cos θ]] as a matrix over ℝ. -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then cos θ
  else if i = (0 : Fin 2) ∧ j = (1 : Fin 2) then -sin θ
  else if i = (1 : Fin 2) ∧ j = (0 : Fin 2) then sin θ
  else cos θ

/-- The rotation matrix R(θ) is orthogonal and has determinant 1, i.e. it belongs to SO(2). -/
theorem rotation_matrix_mem_SO2 (θ : ℝ) : Matrix.transpose (R θ) ⬝ R θ = 1 ∧ Matrix.det (R θ) = 1 := by sorry