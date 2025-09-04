import Mathlib

/-- The 2×2 rotation matrix with angle θ. -/
def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.ofFun fun i j =>
    if i = 0 then if j = 0 then Real.cos θ else -Real.sin θ
    else if j = 0 then Real.sin θ else Real.cos θ

/-- The special orthogonal group SO(2) defined as matrices M with M * Mᵀ = I and det M = 1. -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | M ⬝ Matrix.transpose M = 1 ∧ Matrix.det M = 1 }

/-- The rotation matrix belongs to SO(2). -/
theorem rotation_in_SO (θ : ℝ) : R θ ∈ SO2 := by sorry
