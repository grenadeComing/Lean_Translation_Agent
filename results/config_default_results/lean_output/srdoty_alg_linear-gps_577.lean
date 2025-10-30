import Mathlib

open Matrix

-- Reflection across the x-axis in 2x2 matrices.
 def H0 : Matrix (Fin 2) (Fin 2) ℝ := ![![1, 0], ![0, -1]]

/-- For any 2x2 improper orthogonal matrix H (H ∈ OrthogonalGroup (Fin 2) ℝ, det H = -1),
    the products H0 * H and H * H0 belong to SO(2). -/
 theorem improper_orthogonal_products_in_SO
   (H : Matrix (Fin 2) (Fin 2) ℝ)
   (hH : H ∈ OrthogonalGroup (Fin 2) ℝ)
   (hdet : H.det = -1) :
   H0 * H ∈ SpecialOrthogonalGroup (Fin 2) ℝ ∧ H * H0 ∈ SpecialOrthogonalGroup (Fin 2) ℝ := by
   sorry
