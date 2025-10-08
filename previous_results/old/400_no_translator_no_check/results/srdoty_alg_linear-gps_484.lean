import Mathlib

open Matrix

/-- Rotation matrix in 2D. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then Real.cos θ
    else if i = 0 ∧ j = 1 then -Real.sin θ
    else if i = 1 ∧ j = 0 then Real.sin θ
    else Real.cos θ

/-- The special orthogonal group SO(2) equals the set of 2×2 rotation matrices. -/
theorem SO2_eq_rotations :
  {A : Matrix (Fin 2) (Fin 2) ℝ | A.transpose * A = 1 ∧ Matrix.det A = 1}
  = {A : Matrix (Fin 2) (Fin 2) ℝ | ∃ θ : ℝ, A = R θ} := by sorry
