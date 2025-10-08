import Mathlib

open Matrix

/-- Rotation matrix R(θ) in 2 dimensions. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | (0 : Fin 2), (0 : Fin 2) => Real.cos θ
  | (0 : Fin 2), (1 : Fin 2) => -Real.sin θ
  | (1 : Fin 2), (0 : Fin 2) => Real.sin θ
  | (1 : Fin 2), (1 : Fin 2) => Real.cos θ

/-- Determinant of R(θ) equals 1. -/
theorem det_R (θ : ℝ) : Matrix.det (R θ) = 1 := by sorry

/-- R(θ) is orthogonal: R(θ)^T * R(θ) = I. -/
theorem orthonormal_R (θ : ℝ) : Matrix.transpose (R θ) * R θ = 1 := by sorry

/-- Combined statement: R(θ) has determinant 1 and is orthogonal (hence in SO(2)). -/
theorem R_mem_SO2 (θ : ℝ) : (Matrix.det (R θ) = 1) /\ (Matrix.transpose (R θ) * R θ = 1) := by sorry
