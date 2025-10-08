import Mathlib

open Matrix

/-- The reflection across the x-axis in R^2. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := Matrix.diagonal (fun i => if i = 0 then 1 else -1)

/-- Orthogonality predicate for 2x2 real matrices. -/
def is_orthogonal (M : Matrix (Fin 2) (Fin 2) ℝ) : Prop := M.transpose * M = 1

/-- Special orthogonal group predicate for 2x2 real matrices. -/
def is_special_orthogonal_2 (M : Matrix (Fin 2) (Fin 2) ℝ) : Prop := is_orthogonal M ∧ Matrix.det M = 1

/-- If H is improper orthogonal (Hᵀ H = I and det H = -1), then H0 * H ∈ SO(2). -/
theorem H0_mul_H_in_SO (H : Matrix (Fin 2) (Fin 2) ℝ) (hHorth : is_orthogonal H) (hHdet : Matrix.det H = -1) :
  is_special_orthogonal_2 (H0 * H) := by sorry

/-- If H is improper orthogonal (Hᵀ H = I and det H = -1), then H * H0 ∈ SO(2). -/
theorem H_mul_H0_in_SO (H : Matrix (Fin 2) (Fin 2) ℝ) (hHorth : is_orthogonal H) (hHdet : Matrix.det H = -1) :
  is_special_orthogonal_2 (H * H0) := by sorry
