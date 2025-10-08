import Mathlib

open Matrix

variable {R : Type*} [CommRing R]

/-- Reflection across the x-axis: diag(1, -1) -/
def H0 : Matrix (Fin 2) (Fin 2) R := fun i j =>
  match i, j with
  | 0, 0 => 1
  | 0, 1 => 0
  | 1, 0 => 0
  | 1, 1 => -1

/-- If H is an improper orthogonal 2x2 matrix (Hᵀ H = I and det H = -1),
    then H0 * H and H * H0 are in SO(2): they are orthogonal and have determinant 1. -/
theorem reflect_x_axis_conjugates_to_SO {H : Matrix (Fin 2) (Fin 2) R}
  (h_orth : Hᵀ * H = 1) (h_det : H.det = -1) :
  ((H0 * H)ᵀ * (H0 * H) = 1 ∧ (H0 * H).det = 1) ∧ ((H * H0)ᵀ * (H * H0) = 1 ∧ (H * H0).det = 1) := by
  sorry
