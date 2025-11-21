import Mathlib

open Matrix

/-- Reflection across the x-axis: diag(1, -1) as a 2×2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = 0 ∧ j = 0 then 1
  else if i = 1 ∧ j = 1 then (-1 : ℝ)
  else 0

/-- For any 2×2 improper orthogonal matrix H (Hᵀ H = I and det H = -1),
    the products H0 * H and H * H0 are in SO(2), i.e. are orthogonal with determinant 1. -/
theorem srdoty_alg_linear_gps_577 (H : Matrix (Fin 2) (Fin 2) ℝ)
  (hH_orth : H.transpose * H = 1)
  (hH_det : Matrix.det H = -1) :
  (H0 * H).transpose * (H0 * H) = 1 ∧ Matrix.det (H0 * H) = 1 ∧
  (H * H0).transpose * (H * H0) = 1 ∧ Matrix.det (H * H0) = 1 := by sorry
