import Mathlib

open Matrix

theorem product_of_two_reflections_is_rotation (M N : Matrix (Fin 2) (Fin 2) ℝ)
  (hM : M.transpose * M = 1) (hN : N.transpose * N = 1)
  (dM : M.det = -1) (dN : N.det = -1) :
  (M * N).transpose * (M * N) = 1 ∧ (M * N).det = 1 := by
  sorry
