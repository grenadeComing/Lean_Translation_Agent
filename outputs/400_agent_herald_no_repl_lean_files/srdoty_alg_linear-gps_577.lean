import Mathlib

open Matrix

def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j => if i = j then if i = 0 then (1 : ℝ) else (-1 : ℝ) else 0

theorem improper_orthogonal_mul_reflection_in_SO2 (H : Matrix (Fin 2) (Fin 2) ℝ)
  (hH : H * Hᵀ = 1) (hdet : H.det = -1) :
  ((H0 * H) * (H0 * H)ᵀ = 1 ∧ (H0 * H).det = 1) ∧ ((H * H0) * (H * H0)ᵀ = 1 ∧ (H * H0).det = 1) := by sorry
