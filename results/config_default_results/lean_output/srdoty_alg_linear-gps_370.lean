import Mathlib

open Matrix

variable {n : ℕ}

theorem orthonormal_cols (A : Matrix (Fin n) (Fin n) ℝ)
  (h : Aᵀ ⬝ A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  Orthonormal ℝ (fun i : Fin n => A.col i) := by
  -- translation placeholder
  sorry
