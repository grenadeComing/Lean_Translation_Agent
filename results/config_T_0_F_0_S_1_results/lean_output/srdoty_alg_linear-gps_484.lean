import Mathlib

open Matrix

/-- The rotation matrix R_θ = [[cos θ, -sin θ], [sin θ, cos θ]] as a 2×2 real matrix. -/
def rotation (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.of fun i j =>
    if i = 0 then if j = 0 then cos θ else -sin θ
    else if j = 0 then sin θ else cos θ

/-- The special orthogonal group SO(2): 2×2 real matrices A with Aᵀ A = I and det A = 1. -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { A | A.transpose * A = 1 ∧ Matrix.det A = 1 }

/-- The group SO(2) is exactly the set of rotation matrices R_θ for θ ∈ ℝ. -/
theorem so2_eq_rotation_matrices : SO2 = { A | ∃ θ : ℝ, A = rotation θ } := by sorry
