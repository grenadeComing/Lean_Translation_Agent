import Mathlib

open Matrix
open Set

/-- The special orthogonal group SO(2) as 2x2 real matrices with A^T A = I and det A = 1. -/
def SO2 : Type := {A : Matrix (Fin 2) (Fin 2) ℝ // A.transpose * A = 1 ∧ A.det = 1}

/-- Rotation matrix by angle theta. -/
noncomputable def rot_matrix (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then Real.cos θ else -Real.sin θ
    else
      if j = (0 : Fin 2) then Real.sin θ else Real.cos θ

/-- The set of rotation matrices. -/
def rotations_set : Set (Matrix (Fin 2) (Fin 2) ℝ) := Set.range rot_matrix

/-- The special orthogonal group SO(2) is isomorphic to the set of rotation matrices. -/
noncomputable def SO2_equiv_rotations : SO2 ≃ {A : Matrix (Fin 2) (Fin 2) ℝ // A ∈ rotations_set} := by
  sorry
