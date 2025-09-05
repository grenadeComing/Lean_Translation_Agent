import Mathlib

open Matrix Set Real

/-- Rotation matrix in R^{2x2} -/
def rotation (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then cos θ else -sin θ
    else
      if j = 0 then sin θ else cos θ

/-- The special orthogonal group SO(2) as a set of 2×2 real matrices -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) := { A | A.det = 1 ∧ Aᵀ * A = 1 }

/-- SO(2) equals the set (range) of rotation matrices R_θ for θ ∈ ℝ. -/
theorem SO2_eq_rotations : SO2 = Set.range (rotation : ℝ → Matrix (Fin 2) (Fin 2) ℝ) := by sorry
