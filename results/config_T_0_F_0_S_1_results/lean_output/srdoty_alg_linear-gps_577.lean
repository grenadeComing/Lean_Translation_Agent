import Mathlib

open Matrix

/-- Reflection across the x-axis: H0 = [[1,0],[0,-1]] -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j => if i = j then (if i = 0 then (1 : ℝ) else (-1 : ℝ)) else 0

/--
For any 2×2 improper orthogonal matrix H (i.e. Hᵀ ⬝ H = I and det H = -1),
both H0 ⬝ H and H ⬝ H0 lie in SO(2).
We express membership in SO(2) by the two conditions: orthogonality ((·)ᵀ ⬝ (·) = I)
and determinant equal to 1.
-/
theorem h0_mul_H_and_H_mul_h0_in_SO (H : Matrix (Fin 2) (Fin 2) ℝ)
  (hH_orth : Hᵀ ⬝ H = 1) (hH_det : H.det = (-1 : ℝ)) :
  ((H0 ⬝ H).det = 1 ∧ (H0 ⬝ H)ᵀ ⬝ (H0 ⬝ H) = 1) ∧ ((H ⬝ H0).det = 1 ∧ (H ⬝ H0)ᵀ ⬝ (H ⬝ H0) = 1) := by sorry