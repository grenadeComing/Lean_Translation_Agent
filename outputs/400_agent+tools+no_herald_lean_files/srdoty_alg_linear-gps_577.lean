import Mathlib

open Matrix

def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j => if i = j then if i = 0 then 1 else -1 else 0

theorem improper_orthogonal_mul_with_H0 (H : Matrix (Fin 2) (Fin 2) ℝ)
  (h_orth : Hᵀ * H = 1) (h_det : Matrix.det H = -1) :
  (H0 * H)ᵀ * (H0 * H) = 1 ∧ (H * H0)ᵀ * (H * H0) = 1 ∧
  Matrix.det (H0 * H) = 1 ∧ Matrix.det (H * H0) = 1 := by sorry
