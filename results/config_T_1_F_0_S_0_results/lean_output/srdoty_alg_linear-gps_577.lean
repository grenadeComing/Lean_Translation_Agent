import Mathlib

open Matrix

/-- Reflection across the x-axis. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := !![1, 0; 0, -1]

/-- For any 2x2 improper orthogonal matrix H (Hᵀ * H = I and det H = -1), the products H0 * H and H * H0 both belong to SO(2): they are orthogonal with determinant 1. -/
theorem improper_mul_reflection_in_so (H : Matrix (Fin 2) (Fin 2) ℝ)
  (h_orth : Hᵀ * H = 1)
  (h_det : det H = -1) :
  ((H0 * H)ᵀ * (H0 * H) = 1 ∧ det (H0 * H) = 1) ∧ ((H * H0)ᵀ * (H * H0) = 1 ∧ det (H * H0) = 1) := by sorry
