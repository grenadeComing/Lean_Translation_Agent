import Mathlib

open Matrix

/-- The special orthogonal group SO(2) as a set of 2×2 real matrices. -/
def SO2_set : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { M | Mᵀ * M = 1 ∧ Matrix.det M = 1 }

/-- The rotation matrix by angle θ acting on ℝ^2. -/
noncomputable def rho (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => Real.cos θ
    | 0, 1 => -Real.sin θ
    | 1, 0 => Real.sin θ
    | 1, 1 => Real.cos θ

/-- The set of rotation matrices. -/
def rotations_set : Set (Matrix (Fin 2) (Fin 2) ℝ) := { M | ∃ θ : ℝ, M = rho θ }

/-- SO(2) equals the set of rotation matrices. -/
theorem so2_eq_rotations : SO2_set = rotations_set := by sorry
