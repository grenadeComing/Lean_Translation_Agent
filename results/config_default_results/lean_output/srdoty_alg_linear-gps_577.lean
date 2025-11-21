import Mathlib

open Matrix

/-- Reflection across the x-axis: H0 = [[1,0],[0,-1]] as a 2x2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then (1 : ℝ) else if i = 1 ∧ j = 1 then (-1 : ℝ) else 0

/-- For any 2x2 real matrix H, if H is orthogonal (Hᵀ * H = I) and det H = -1, then
    H0 * H and H * H0 are both special orthogonal (i.e., orthogonal with determinant 1). -/
theorem improper_orthogonal_mul_with_reflection_in_SO2 (H : Matrix (Fin 2) (Fin 2) ℝ)
  (h_orth : H.transpose * H = 1)
  (h_det : Matrix.det H = -1) :
  ((H0 * H).transpose * (H0 * H) = 1 ∧ Matrix.det (H0 * H) = 1) ∧
  ((H * H0).transpose * (H * H0) = 1 ∧ Matrix.det (H * H0) = 1) := by sorry
