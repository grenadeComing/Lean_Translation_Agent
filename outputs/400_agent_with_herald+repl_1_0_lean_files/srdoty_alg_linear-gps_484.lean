import Mathlib

noncomputable section

open Matrix
open Set

/-- Rotation matrix in R^{2x2} for angle θ -/
def rotation_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := λ i j,
  match i, j with
  | 0, 0 => Real.cos θ
  | 0, 1 => -Real.sin θ
  | 1, 0 => Real.sin θ
  | 1, 1 => Real.cos θ

/-- The group SO(2) (2×2 real special orthogonal matrices) equals the set of rotation matrices. -/
theorem so2_eq_rotation_matrices :
  { A : Matrix (Fin 2) (Fin 2) ℝ | Matrix.det A = (1 : ℝ) ∧ Matrix.transpose A * A = (1 : Matrix (Fin 2) (Fin 2) ℝ) } =
  Set.range rotation_matrix := by sorry
