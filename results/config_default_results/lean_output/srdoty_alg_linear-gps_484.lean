import Mathlib

open Real Matrix

/-- The rotation matrix for angle θ. -/
noncomputable def rot_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | ⟨0, _⟩, ⟨0, _⟩ => Real.cos θ
    | ⟨0, _⟩, ⟨1, _⟩ => -Real.sin θ
    | ⟨1, _⟩, ⟨0, _⟩ => Real.sin θ
    | ⟨1, _⟩, ⟨1, _⟩ => Real.cos θ

/-- SO(2) is the set of 2x2 real matrices that are orthogonal and have determinant 1. -/
def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  {A : Matrix (Fin 2) (Fin 2) ℝ | A.transpose * A = 1 ∧ Matrix.det A = 1}

/-- The set of all rotation matrices. -/
def rotations : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  Set.range (fun θ : ℝ => rot_matrix θ)

/-- The group SO(2) equals the set of rotation matrices. -/
theorem so2_eq_rotations : SO2 = rotations := by sorry
