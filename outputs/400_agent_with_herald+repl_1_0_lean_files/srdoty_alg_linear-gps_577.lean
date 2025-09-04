import Mathlib
open Matrix

/-- Reflection across the x-axis. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j => if i = j then if i = 0 then (1 : ℝ) else -1 else 0

/-- For any 2x2 improper orthogonal matrix H (i.e., H ∈ O(2) and det H = -1), the products H0 * H and H * H0 both belong to SO(2). -/
theorem improper_mult_with_reflection_in_SO (H : Matrix (Fin 2) (Fin 2) ℝ)
  (hH : H.transpose * H = 1) (hdet : H.det = -1) :
  (H0 * H).transpose * (H0 * H) = 1 ∧ (H0 * H).det = 1 ∧ (H * H0).transpose * (H * H0) = 1 ∧ (H * H0).det = 1 := by sorry
