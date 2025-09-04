import Mathlib

/-- The standard rotation matrix in R^2. -/
noncomputable def R (theta : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => Real.cos theta
  | 0, 1 => -Real.sin theta
  | 1, 0 => Real.sin theta
  | 1, 1 => Real.cos theta

/-- The special orthogonal group SO(2) as 2x2 real matrices. -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { A | A * A.transpose = (1 : Matrix (Fin 2) (Fin 2) ℝ) ∧ Matrix.det A = (1 : ℝ) }

/-- SO(2) is exactly the set of rotation matrices. -/
theorem SO2_eq_rotations : SO2 = Set.range R := by sorry
