import Mathlib

open Matrix Real

/-- Rotation matrix in dimension 2 depending on an angle `θ`. -/
noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | (0 : Fin 2), (0 : Fin 2) => Real.cos θ
  | (0 : Fin 2), (1 : Fin 2) => -Real.sin θ
  | (1 : Fin 2), (0 : Fin 2) => Real.sin θ
  | (1 : Fin 2), (1 : Fin 2) => Real.cos θ

/-- The rotation matrix `R θ` is orthogonal and has determinant `1`, i.e. it belongs to `SO(2)`. -/
theorem R_mem_SO2 (θ : ℝ) : (Matrix.transpose (R θ)) * (R θ) = 1 ∧ Matrix.det (R θ) = 1 := by
  sorry
