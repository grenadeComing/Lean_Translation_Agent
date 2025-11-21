import Mathlib
open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  match i, j with
  | 0, 0 => Real.cos θ
  | 0, 1 => -Real.sin θ
  | 1, 0 => Real.sin θ
  | 1, 1 => Real.cos θ

theorem rotations_in_SO2 (θ : ℝ) : (R θ).transpose * R θ = 1 ∧ (R θ).det = 1 := by sorry
